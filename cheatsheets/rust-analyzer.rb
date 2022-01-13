cheatsheet do
    title 'Rust Analyzer'
    docset_file_name 'rust-analyzer'
    keyword 'ra'
    introduction "The rust-analyzer plugin for VS Code."

    category do
        id 'Postfix Completions'

        entry do
            command 'expr.if'
            name '`if expr {}` or `if let …​ {}` for `Option` or `Result`'
        end
        entry do
            command 'expr.match'
            name '`match expr {}`'
        end
        entry do
            command 'expr.while'
            name '`while expr {}` or `while let …​ {}` for `Option` or `Result`'
        end
        entry do
            command 'expr.ref'
            name '`&expr`'
        end
        entry do
            command 'expr.refm'
            name '`&mut expr`'
        end
        entry do
            command 'expr.let'
            name '`let $0 = expr;`'
        end
        entry do
            command 'expr.letm'
            name '`let mut $0 = expr;`'
        end
        entry do
            command 'expr.not'
            name '`!expr`'
        end
        entry do
            command 'expr.dbg'
            name '`dbg!(expr)`'
        end
        entry do
            command 'expr.dbgr'
            name '`dbg!(&expr)`'
        end
        entry do
            command 'expr.call'
            name '`(expr)`'
        end
        entry do
            command '"{}".format'
            command '"{}".panic'
            command '"{}".println'
            command '"{}".log{d,t,i,w,e}'
            name 'Format String Completion'
            notes <<-'END'
            `"Result {result} is {2 + 2}"` is expanded to the `"Result {} is {}", result, 2 + 2`.

            The following postfix snippets are available:

            * `format` → `format!(…​)` 
            * `panic` → `panic!(…​)` 
            * `println` → `println!(…​)` 
            * `logd` → `log::debug!(…​)`
            * `logt` → `log::trace!(…​)`
            * `logi` → `log::info!(…​)`
            * `logw` → `log::warn!(…​)`
            * `loge` → `log::error!(…​)`
            END
        end
    end

    category do
        id 'Snippets'
        entry do
            command 'pd'
            name '`eprintln!(" = {:?}", );`'
        end
        entry do
            command 'ppd'
            name '`eprintln!(" = {:#?}", );`'
        end
        entry do
            command 'tfn'
            name '`#[test] fn feature(){}`'
        end
        entry do
            command 'tmod'
            name 'Create Test Module'
            notes <<-'END'
                ```rust
                #[cfg(test)]
                mod tests {
                    use super::*;

                    #[test]
                    fn test_name() {}
                }
                ```
            END
        end
    end

    category do
        id 'Commands'
        entry do
            command 'unassigned'
            name 'Expand Macro Recursively'
            notes 'Shows the full macro expansion of the macro at current cursor.'
        end
        entry do
            command 'OPTION+SHIFT+→'
            command 'OPTION+SHIFT+←'
            name 'Expand and Shrink Selection'
            notes 'Extends or shrinks the current selection to the encompassing syntactic construct (expression, statement, item, module, etc). It works with multiple cursors.'
        end
        entry do
            command 'OPTION+SHIFT+F12'
            name 'Find All References'
            notes 'Shows all references of the item at the cursor location.'
        end
        entry do
            command 'F12'
            command 'COMMAND+Click'
            name 'Go to Definition'
            notes 'Navigates to the definition of an identifier.'
        end
        entry do
            command 'COMMAND+F12'
            name 'Go to Implementation'
            notes 'Navigates to the impl block of structs, enums or traits. Also implemented as a code lens.'
        end
        entry do
            command 'unassigned'
            name 'Toggle Inlay Hints'
            notes "rust-analyzer shows additional information inline with the source \
            code. Editors usually render this using read-only virtual text snippets \
            interspersed with code."
        end
        entry do
            command 'unassigned'
            name 'Join Lines'
            notes "Join selected lines into one, smartly fixing up whitespace, trailing \
            commas, and braces."
        end
        entry do
            command 'unassigned'
            name 'Find Matching Brace'
            notes "If the cursor is on any brace (`<>(){}[]||`) which is a part of a \
            brace-pair, moves cursor to the matching brace. It uses the actual parser \
            to determine braces, so it won’t confuse generics with comparisons."
        end
        entry do
            command 'unassigned'
            name 'Locate Parent Module'
            notes "Navigates to the parent module of the current module."
        end
        entry do
            command 'unassigned'
            name 'Peek Related Tests'
            notes "Provides a sneak peek of all tests where the current item is used.\n\n\
            The simplest way to use this feature is via the context menu."
        end
        entry do
            command 'unassigned'
            name 'Run'
            notes "Shows a popup suggesting to run a test/benchmark/binary at the current \
            cursor location. Super useful for repeatedly running just a single test. Do \
            bind this to a shortcut!"
        end
        entry do
            command 'F2'
            name 'Rename'
            notes "Renames the item below the cursor and all of its references."
        end
        entry do
            command 'COMMAND+T'
            name 'Workspace Symbol'
            notes <<-'END'
            Uses fuzzy-search to find types, modules and functions by name across
            your project and dependencies. This is the most useful feature, which
            improves code navigation tremendously. It mostly works on top of the
            built-in LSP functionality, however `#` and `*` symbols can be used to
            narrow down the search. Specifically,

            * `Foo` searches for `Foo` type in the current workspace
            * `foo#` searches for `foo` function in the current workspace
            * `Foo*` searches for `Foo` type among dependencies, including `stdlib`
            * `foo#*` searches for `foo` function among dependencies

            That is, `#` switches from "types" to all symbols, `*` switches from the
            current workspace to dependencies.
            END
        end
    end
end