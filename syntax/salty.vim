" Syntax highlighting for the salty synthesis DSL

if exists("b:current_syntax")
    finish
endif


syn keyword saltyController controller
syn keyword saltyWhere      where
syn keyword saltyStructure  enum input output
syn match   saltyOperator   "\(<>-=!/\\&|:\)\+"

syn keyword saltySpec sys_trans sys_liveness env_trans env_liveness

syn keyword saltyControl case if then else

syn keyword saltyTodo TODO FIXME XXX HACK contained
syn match   saltyComment "--.*$" contains=saltyTodo,@Spell

highlight def link saltyController Structure
highlight def link saltyWhere      Structure
highlight def link saltyStructure  Structure
highlight def link saltySpec       Statement
highlight def link saltyComment    Comment
highlight def link saltyControl    Conditional

let b:current_syntax = "salty"
