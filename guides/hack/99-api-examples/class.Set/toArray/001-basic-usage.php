<?hh

namespace Hack\UserDocumentation\API\Examples\Set\ToArray;

$s = Set {'red', 'green', 'blue', 'yellow'};

$array = $s->toArray();

var_dump(is_array($array));
var_dump($array);
