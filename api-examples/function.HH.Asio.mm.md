```basic-usage.hack
/**
 * Query an arbitrary number of URLs in parallel
 * returning them as a Map of string responses.
 *
 * Refer to \HH\Asio\m() for a more verbose version of this.
 */
async function get_urls(
  \ConstMap<string, string> $urls,
): Awaitable<Map<string, string>> {

  // Invoke \HH\Asio\curl_exec for each URL,
  // then await on each in parallel
  return await \HH\Asio\mm($urls, fun("\HH\Asio\curl_exec"));
}

<<__EntryPoint>>
async function basic_usage_main(): Awaitable<void> {
  $urls = ImmMap {
    'com' => "http://example.com",
    'net' => "http://example.net",
    'org' => "http://example.org",
  };

  $pages = await get_urls($urls);
  foreach ($pages as $name => $page) {
    echo $name, ': ';
    echo \substr($page, 0, 15).' ... '.\substr($page, -8);
  }
}
```.skipif
// Skip if we don't have an internet connection
if (!\get_headers("www.example.com")) {
  print "skip";
}
```
