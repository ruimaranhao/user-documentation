// WARNING: Contains some auto-generated boilerplate code, see:
// HHVM\UserDocumentation\MarkdownExt\ExtractedCodeBlocks\FilterBase::addBoilerplate

namespace HHVM\UserDocumentation\Api\Hack\ClassHHVectorMethodLinearSearch\BasicUsage;

<<__EntryPoint>>
async function _main(): Awaitable<void> {
  \init_docs_autoloader();

  $v = Vector {'red', 'green', 'blue', 'yellow'};

  // Prints 2
  \var_dump($v->linearSearch('blue'));

  // Prints -1 (since 'purple' is not in the Vector)
  \var_dump($v->linearSearch('purple'));
}
