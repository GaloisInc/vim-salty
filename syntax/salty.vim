" Syntax highlighting for the salty synthesis DSL

if exists("b:current_syntax")
    finish
endif

syn clear

syn match   saltyNumber "\<[0-9]\+\>"

syn keyword saltyBoolean True False

syn keyword saltyController controller
syn keyword saltyWhere      where
syn keyword saltyStructure  enum input output def
syn match   saltyDefine     "[=:|]"
syn match   saltyOperator   "\([<>\-!&/\\]\|==\|||\)\+"

syn keyword saltySpec sys_init sys_trans sys_liveness env_init env_trans env_liveness

syn keyword saltySetFuns all any mutex

syn keyword saltyControl case of if then else otherwise

syn keyword saltyTodo TODO FIXME XXX HACK contained
syn match   saltyComment "--.*$" contains=saltyTodo,@Spell

highlight def link saltyController Structure
highlight def link saltyWhere      Structure
highlight def link saltyStructure  Structure
highlight def link saltySpec       Statement
highlight def link saltySetFuns    Keyword
highlight def link saltyComment    Comment
highlight def link saltyControl    Conditional
highlight def link saltyDefine     Define
highlight def link saltyOperator   Operator

highlight def link saltyTodo       Todo

highlight def link saltyBoolean    Boolean

highlight def link saltyNumber     Number

let b:current_syntax = "salty"
