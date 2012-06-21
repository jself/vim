if !exists('loaded_snippet') || &cp
    finish
endif

Snippet b_gen_server -behaviour(gen_server). <CR>-export([init/1, handle_call/3, handle_cast/2, handle_info/2, terminate/2, code_change/3]).<CR>-export([start_link/0]).<CR><CR>%% Client functions %%<CR><CR>start_link() -> <CR>    %% Uncomment if used in supervisor<CR>    %process_flag(trap_exit, true),<CR>    gen_server:start_link({local, ?MODULE}, ?MODULE, [], []).<CR><CR>%% gen_server functions %%<CR><CR>init([]) -><CR>    %% Result = {ok, State} | {ok, State, Timeout} | {ok, State, hibernate}<CR>    {ok, []}.<CR> <CR>handle_call(_Request, _From, State) -><CR>    %% Result = {reply, Reply, NewState} | {reply, Reply, NewState, Timeout}<CR>    %% {reply, Reply, NewState, hibernate}<CR>    %% {noreply, NewState} | {noreply, NewState, Timeout}<CR>    %% {noreply, NewState, hibernate}<CR>    %% {stop, Reason, Reply, NewState} | {stop, Reason, NewState}<CR>    {reply, unknown, State}.<CR><CR>handle_cast(_Msg, State) -> <CR>    %% Result = {noreply, NewState} | {noreply, NewState, Timeout}<CR>    %% {noreply, NewState, hibernate}<CR>    %% {stop, Reason, NewState}<CR>    {noreply, State}.<CR><CR>handle_info(_Msg, State) -> {noreply, State}.<CR>terminate(_Reason, _State) -> ok.<CR>code_change(_OldVersion, State, _Extra) -> {ok, State}.<CR><CR>%% Internal functions %%<CR>



