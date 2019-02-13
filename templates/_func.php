<?php namespace ProcessWire;

/**
 *
 * @param Page|null $item
 * @param string $color
 *
 */
function privacyPanel($item = null, $class = 'privacy-panel') {
if (!$item) return;
$out = '';
$out .= "<a href='{$item->url}'>";
$out .= "<i data-feather='info' style='stroke-width: 1px'></i> $item->title ";
$out .= "<span>$item->meta_title</span></a>";
return editItem($item) . $out;
}

/**
 *
 * @param array $opt https://www.addtoany.com/
 *
 */
function toAny($opt = ['t','f','g-p','l','r','e','g-m'])
{
    $out = '';
    $edit = editItem(pages()->get('/options/'), 'right: 15px; top: 100px; position: fixed;');
      $out .= "<!-- AddToAny BEGIN -->
      <div class='a2a_kit a2a_kit_size_32 a2a_floating_style a2a_vertical_style' style='right:0px; top:150px; background-color: #2e2d2d99;'>
      $edit
      <a class='a2a_dd' href='https://www.addtoany.com/share'></a>";
    if (in_array('f', $opt)) {
        $out .= "<a class='a2a_button_facebook'></a>";
    }
    if (in_array('t', $opt)) {
        $out .= "<a class='a2a_button_twitter'></a>";
    }
    if (in_array('g-p', $opt)) {
        $out .= "<a class='a2a_button_google_plus'></a>";
    }
    if (in_array('l', $opt)) {
        $out .= "<a class='a2a_button_linkedin'></a>";
    }
    if (in_array('r', $opt)) {
        $out .= "<a class='a2a_button_reddit'></a>";
    }
    if (in_array('e', $opt)) {
        $out .= "<a class='a2a_button_email'></a>";
    }
    if (in_array('g-m', $opt)) {
        $out .= "<a class='a2a_button_google_gmail'></a>";
    }
      $out .= "</div>
      <script src='https://static.addtoany.com/menu/page.js' defer></script>
      <!-- AddToAny END -->";
      return $out;
}


/**
 *
 * @param array $href ( url to  stylesheets )
 *
 */
function cssAsync(array $href) {
$out = "\n<script>\n";
foreach ($href as $key => $link) {
$out .= "var giftofspeed_$key = document.createElement('link');
giftofspeed_$key.rel = 'stylesheet';
giftofspeed_$key.href = '$link';
var godefer = document.getElementsByTagName('link')[0];
godefer.parentNode.insertBefore(giftofspeed_$key, godefer);";
}
$out .= "\n</script>";
return $out;
}

/**
 *
 * @param Page $page
 *
 */
function seoPagination($page)
{
	$out = '';
// https://processwire.com/blog/posts/processwire-2.6.18-updates-pagination-and-seo/
    if (input()->pageNum > 1) {
        $out .= "<meta name='robots' content='noindex,follow'>\n";
    }
// https://weekly.pw/issue/222/
    if (config()->pagerHeadTags) {
        $out .= config()->pagerHeadTags . "\n";
    }

		return $out;
}

/**
 * Given a group of pages, render a simple <ul> navigation
 *
 * This is here to demonstrate an example of a simple shared function.
 * Usage is completely optional.
 *
 * @param PageArray $items
 *
 */

function renderNav(PageArray $items, $home = false) {

	if( $home == true ) $items->prepend(pages('/'));

    if(!$items->count()) return;

    $out = '';

	// cycle through all the items
	foreach($items as $item) {

		// render markup for each navigation item as an <li>
		if($item->id == wire('page')->id) {
			// if current item is the same as the page being viewed, add a "current" class to it
			$out .= "<li class='current' aria-current='true'>";
		} else {
			// otherwise just a regular list item
			$out .= "<li>";
		}

		// markup for the link
		$out .= "<a href='$item->url'>$item->title</a>";

		// close the list item
		$out .= "</li>";
    }

    return $out;

}

/**
 * Given a group of pages, render a <ul> navigation tree
 *
 * This is here to demonstrate an example of a more intermediate level
 * shared function and usage is completely optional. This is very similar to
 * the renderNav() function above except that it can output more than one
 * level of navigation (recursively) and can include other fields in the output.
 *
 * @param array|PageArray $items
 * @param int $maxDepth How many levels of navigation below current should it go?
 * @param string $fieldNames Any extra field names to display (separate multiple fields with a space)
 * @param string $class CSS class name for containing <ul>
 * @return string
 *
 */
function renderNavTree($items, $maxDepth = 0, $fieldNames = '', $class = 'nav')
{

    // if we were given a single Page rather than a group of them, we'll pretend they
    // gave us a group of them (a group/array of 1)
    if ($items instanceof Page) {
        $items = array($items);
    }

    // $out is where we store the markup we are creating in this function
    $out = '';

    // cycle through all the items
    foreach ($items as $item) {
        // markup for the list item...
        // if current item is the same as the page being viewed, add a "current" class to it
        $out .= $item->id == wire('page')->id ? "<li class='current'>" : "<li>";

        // markup for the link
        $out .= "<a href='$item->url'>$item->title</a>";

        // if there are extra field names specified, render markup for each one in a <div>
        // having a class name the same as the field name
        if ($fieldNames) {
            foreach (explode(' ', $fieldNames) as $fieldName) {
                $value = $item->get($fieldName);
                if ($value) {
                    $out .= " <div class='$fieldName'>$value</div>";
                }
            }
        }

        // if the item has children and we're allowed to output tree navigation (maxDepth)
        // then call this same function again for the item's children
        if ($item->hasChildren() && $maxDepth) {
            if ($class == 'nav') {
                $class = 'nav nav-tree';
            }
            $out .= renderNavTree($item->children, $maxDepth-1, $fieldNames, $class);
        }

        // close the list item
        $out .= "</li>";
    }

    // if output was generated above, wrap it in a <ul>
    if ($out) {
        $out = "<ul class='$class'>$out</ul>\n";
    }

    // return the markup we generated above
    return $out;
}

/**
 *
 * @param Page|PageArray|null $page
 *
 */
function breadCrumb($page = null)
{

    if ($page == null) {
        return '';
    }

    $out = '';

    // breadcrumbs are the current page's parents
    foreach ($page->parents() as $item) {

        $out .= "<span><a href='$item->url'>$item->title</a>" . ' / ' . "</span>";

    }
    // optionally output the current page as the last item
    $out .= $page->id != 1  ? "<span>$page->title</span><br>" : '';

    return $out;
}

/********* MULTI LANGUAGE SUPPORT *********/

/**
 *
 * @param Page $page
 * @param Page $root
 *
 */
function linkTag($page, $root)
{

    // If Multi Language Modules activate
    if (!$page->getLanguages()) {
        return '';
    }
    $out = '';
    // handle output of 'hreflang' link tags for multi-language
    // this is good to do for SEO in helping search engines understand
    // what languages your site is presented in
    foreach (languages() as $language) {
        // if this page is not viewable in the language, skip it
        if (!$page->viewable($language)) {
            continue;
        }
        // get the http URL for this page in the given language
        $url = $page->localHttpUrl($language);
        // hreflang code for language uses language name from homepage
        $hreflang = $root->getLanguageValue($language, 'name');
        // if($hreflang == 'home') $hreflang = page()->ts['languageCode'];
        // output the <link> tag: note that this assumes your language names are the same as required by hreflang.
        $out .= "\t<link rel='alternate' hreflang='$hreflang' href='$url' />\n";
    }
    return $out;
}

/**
 *
 * @param Page $page
 * @param Page $root
 *
 */
function langMenu($page, $root)
{
    // If Enable Multilanguage Modules
    if (!page()->getLanguages()) {
        return '';
    }
    $out = '';
    foreach (languages() as $language) {
    // is page viewable in this language?
        if (!$page->viewable($language)) {
            continue;
        }
        if ($language->id == user()->language->id) {
            $out .= "<li class='current'>";
            $icon = "<i data-feather='flag'></i>";
        } else {
            $out .= "<li>";
            $icon = '';
        }
        $url = $page->localUrl($language);
        $hreflang = $root->getLanguageValue($language, 'name');
        if($hreflang == 'home') $hreflang = 'x-default';
        $out .= "<a hreflang='$hreflang' href='$url'>$language->title $icon</a></li>";
    }
    return $out;
}

 /**
 *
 * Comments + Pagination
 * @param Page $page
 * @param int $limit
 *
 */
function blogComments($page, $limit = 12)
{

    if (!$page->comments) {
        return '';
    }

// Translatable Strings
    $cite = setting('cite');
    $email = setting('email');
    $text = setting('text');
    $submit = setting('submit');
    $comments_label = setting('comments-label');
    $added = setting('added');
    $in_day = setting('in-day');
    $reply = setting('reply');
    $join = setting('join');
    $approved = setting('approved');
    $thanks = setting('thanks');
    $errors = setting('errors');
    $prev = setting('previous-comments');
    $next = setting('next-comments');

    $comm = '';

    $start = (input()->pageNum - 1) * $limit;
    $comments = $page->comments->slice($start, $limit);

    $comm .= $comments->render(array(
     'headline' => "<h3>" . $comments_label . "</h3>",
     'commentHeader' => $added . '{cite}' . $in_day . ' {created} {stars} {votes}',
     'dateFormat' => 'm/d/y - H:i',
     'encoding' => 'UTF-8',
    //  'admin' => false, // shows unapproved comments if true
     'replyLabel' => $reply,
    ));

    $comm .= $page->comments->renderForm(array(
     'headline' => '<h2>' . $join . '</h2>',
     'pendingMessage' => $approved,
     'successMessage' => $thanks,
     'errorMessage' => $errors,
     'attrs' => array(
     'id' => 'CommentForm',
     'action' => './',
     'method' => 'post',
     'class' => 'comm-form c-form',
     'rows' => 5,
     'cols' => 50,
     ),
     'labels' => array(
             'cite' => $cite,
             'email' => $email,
             'text' => $text ,
             'submit' => $submit,
         ),
     ));

     $comm .= "<p class='link-pagination'>";

    if (input()->pageNum > 1) {
        $comm .= "<a class='btn m-1' href='./page" . (input()->pageNum - 1) . "'>" .  $prev . "</a>";
    }
    if ($start + $limit < count(page()->comments)) {
        $comm .= "<a class='btn m-1'  href='./page" . (input()->pageNum + 1) . "'>" . $next . "</a>";
    }
        $comm .= "</p>";

    return $comm;
}

/**
 * @param Page $items Page Children to start the render images
 * @param bool $check Check if comments on the options page have been turned off
 */
function countComments($items, $check) {
	$id = $items->comments->last() ? $items->comments->last()->id : '#';
	if($id == '#') return;
	if(!$check) return;
        $out = '';
            $out = "<a href='$items->url#Comment$id'>";
            $out .= "<i data-feather='message-square' style='width: 18px; height: 18px;'></i>" . count($items->comments);
            $out .= "</a>";
        return $out;
}

/**
 *
 * @param int $startDate or whenever you want it to start like 2017
 * @param string $where where is location archive ( 'sidebar' or 'archives' )
 *
 */
function blogArchive($startDate = 2018, $option = false)
{

    $blogPage = pages()->get("template=blog-posts");
// Reset Form
    $out = '';
// $startYear = date("Y"); // this year
    $endDate = date("Y"); // this year
    $now = time();

//CODE FROM => https://processwire.com/talk/topic/263-creating-archives-for-newsblogs-sections/
    for ($year = $endDate; $year >= $startDate; $year--) {
        for ($month = 12; $month > 0; $month--) {
            $startTime = strtotime("$year-$month-01"); // 2011-12-01 example
            if ($startTime > $now) {
                continue; // don't bother with future dates
            }
            if ($month == 12) {
                $endTime = strtotime(($year+1) . "-01-01");
            } else {
                $endTime = strtotime("$year-" . ($month+1) . "-01");
            }
            $entries = $blogPage->children("date>=$startTime, date<$endTime"); // or substitute your own date field
            $date = date("Y-m", $startTime);
            $url = pages()->get("template=blog-archives")->url . date("Y", $startTime) . "/" . date("m", $startTime) . '/';
            $count = count($entries);
            if ($count > 0) {
                if ($option == true) {
                    $out .= "<option value='$url'>$date - ($count)</option>";
                } else {
                    $out .= "<li><a href='$url'>$date - ($count)</a></li>";
                }
            }
        }
    }

    return $out;
}


function blogInfo($post, $user) {
	$out = '';
	$count_comments = countComments($post, setting('enable-comments'));
	// Categories
	if (count($post->categories)) {
	// echo ' / ' . pages()->get("template=blog-categories")->title . ' ';
	echo "<i data-feather='hash' style='width: 18px; height: 18px;'></i> ";
	$post->categories->implode(" <small>|</small> ", function($cat) {
	echo "<a style='font-size: 1.7rem; color: #1c98d5;' href='{$cat->url}'>{$cat->title}</a> ";
	});
	}
	// Tags
	if (count($post->tags)) {
	// echo ' / ' . pages()->get("template=blog-tags")->title . ' ';
	echo "<i data-feather='tag' style='width: 18px; height: 18px;'></i> ";
	$post->tags->implode(" <small>|</small> ", function($tag) {
	echo "<a style='font-size: 1.7rem; color: #1c98d5;' href='{$tag->url}'>{$tag->title}</a> ";
	});
	}
	echo "
	<i data-feather='user' style='width: 18px; height: 18px;'></i>
	<a style='font-size: 1.7rem; color: #1c98d5;' href='$user->url'>$user->title</a> /
	<i data-feather='calendar' style='width: 18px; height: 18px;'></i>
	$post->date / $count_comments";
}

/********* END MULTI LANGUAGE SUPPORT *********/

/**
 *
 * https://processwire.com/blog/posts/processwire-3.0.107-core-updates/
 *
 * @param Page $item
 *
 */
function articleLinks($page)
{
    $out = '';
    $links = $page->links();
// If another page has links to this page
    if ($links->count()) {
        $out .= "<h3>" . __('You might also like:') . "</h3>";
        $out .= $links->each("<li><a href={url}>{title}</a></li>") . '<br>';
    }
    return $out;
}

/**
 *
 * START PAGINATION https://processwire.com/api/modules/markup-pager-nav/
 *
 * @param Page $items
 *
 */
function pagination($items, $style = 'display: flex; list-style: none; justify-content: center; flex-wrap: wrap;')
{
if(!count($items)) return;
$out = $items->renderPager(array(
        'nextItemLabel' => __('Next') . " &raquo;",
        'previousItemLabel' => "&laquo; " . __('Previous'),
        'listMarkup' => "<ul class='MarkupPagerNav' style='$style'>{out}</ul>",
        'itemMarkup' => "<li class='{class}' style='margin: 10px;'>{out}</li>",
        'linkMarkup' => "<a href='{url}'><span>{out}</span></a>",
        'numPageLinks' => 10,
        'currentItemClass' => 'active'
    ));
return $out;
}

/**
 *
 * Prev Next Button
 * Basic Example echo prNx($page)
 *
 * @param Page|null $item
 *
 */
function prNx($item = null)
{

// Prev Next Button
    $p_next = $item->next();
    $p_prev = $item->prev();

    $out = '';

// link to the prev blog post, if there is one
    if ($p_prev->id) {
		$out .= "<a href='$p_prev->url'>&laquo; $p_prev->title</a>";
    }

// link to the next blog post, if there is one
    if ($p_next->id) {
        $out .= "<a href='$p_next->url'>$p_next->title &raquo;</a>";
    }

    return $out;
}

/**
 *
 * Google Webmaster Tools Verification Code
 *
 * @param string|null $code
 *
 */
function gwCode($code = null)
{
    if ($code) {
        echo "<meta name='google-site-verification' content='$code' />\n";
    }
}

/**
 *
 * https://developers.google.com/analytics/devguides/collection/analyticsjs/
 *
 * @param string $code Google Analytics Tracking Code
 *
 */
function gaCode($code = null)
{
if($code) {
echo "\t<script async src='https://www.googletagmanager.com/gtag/js?id=UA-{$code}'></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag(){dataLayer.push(arguments);}
        gtag('js', new Date());
        gtag('config', 'UA-{$code}');
    </script>";
    }
}

/**
 *
 * @param array $fonts
 *
 */
function googleFonts(array $fonts)
{

// Implode to format => 'Roboto','Montserrat','Limelight','Righteous'
$font_family = implode("','", $fonts);

return"\t<script>
      /* ADD GOOGLE FONTS WITH WEBFONTLOADER ( BETTER PAGESPEED )
          https://github.com/typekit/webfontloader
      */
      WebFontConfig = {
              google: {
              families: ['$font_family']
          }
      };
          (function(d) {
              var wf = d.createElement('script'), s = d.scripts[0];
              wf.src = 'https://ajax.googleapis.com/ajax/libs/webfont/1.6.26/webfont.js';
              wf.async = true;
              s.parentNode.insertBefore(wf, s);
          })(document);
\t</script>\n";
}

/**
 *
 * @param Page $page
 *
 */
function editBtn($page)
{
    if ($page->editable()) echo "\t\t<a class='button b-edit' href='" . $page->editURL . "'>" . setting('edit-page') . "</a>\n";
}


/**
 *
 * @param Page $item
 *
 */
function editItem($item, $style = '') {
    $out = '';
    if($item->editable) {
        $out .= " <a class='edit-item' href='$item->editUrl' style='$style'>";
        $out .=  "<i data-feather='edit' style='width: 35px; height: 35px; stroke-width: 1px'></i>";
        $out .= "</a>";
        echo $out;
    }
  }

/**
 *
 * @param string $class
 *
 */
function debugRegions($class = 'sec-debug')
{
    $out = '';

if (config()->debug && user()->isSuperuser()) {
$out .= "\n\t\t<section id='debug' class='$class'>
<h2>Debug Regions</h2>
            <!--PW-REGION-DEBUG-->
        \n\t\t</section>\n";
    }
 return $out;
}
