// WARNING: Contains some auto-generated boilerplate code, see:
// HHVM\UserDocumentation\MarkdownExt\ExtractedCodeBlocks\FilterBase::addBoilerplate

namespace HHVM\UserDocumentation\Api\Hack\ClassHHSetMethodToVArray\BasicUsage;

<<__EntryPoint>>
async function _main(): Awaitable<void> {
  \init_docs_autoloader();

  $s = Set {'red', 'green', 'blue', 'yellow'};

  $array = $s->toVArray();

  \var_dump(\HH\is_any_array($array));
  \var_dump($array);
}
