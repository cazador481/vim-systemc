"=============================================================================
" Vim syntax file for SystemC
" FILE: cpp.vim(SystemC)
" AUTHOR:  Kocha <kocha.lsifrontend@gmail.com>
" Last Modified: 27 Feb 2012.
" License: MIT license  {{{
"     Permission is hereby granted, free of charge, to any person obtaining
"     a copy of this software and associated documentation files (the
"     "Software"), to deal in the Software without restriction, including
"     without limitation the rights to use, copy, modify, merge, publish,
"     distribute, sublicense, and/or sell copies of the Software, and to
"     permit persons to whom the Software is furnished to do so, subject to
"     the following conditions:
"
"     The above copyright notice and this permission notice shall be included
"     in all copies or substantial portions of the Software.
"
"     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
"     OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
"     MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
"     IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
"     CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
"     TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
"     SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
" }}}
" Version: 0.1.0, for Vim 7.3
"=============================================================================

" Check syntax cpp
if(b:current_syntax != "cpp")
  finish
endif

" Check file SystemC
let file_syntax = Check_SystemC()
if(file_syntax == "cpp")
   finish
endif

" Macros in SystemC
syn keyword SC_Macro IEEE_1666_SYSTEMC
syn keyword SC_Macro SC_VERSION_MAJOR SC_VERSION_MINOR SC_VERSION_PATCH
syn keyword SC_Macro SC_VERSION_ORIGINATOR SC_VERSION_RELEASE_DATE SC_VERSION_PRERELEASE
syn keyword SC_Macro SC_VERSION SC_COPYRIGHT
syn keyword SC_Macro SC_IS_PRERELEASE
syn keyword SC_Macro SC_DEFAULT_STACK_SIZE
syn keyword SC_Macro SC_RUN_TO_TIME SC_EXIT_ON_STARVATION
syn keyword SC_Macro SC_STOP_FINISH_DELTA SC_STOP_IMMEDIATE
syn keyword SC_Macro SC_ELABORATION SC_BEFORE_END_OF_ELABORATION SC_START_OF_SIMULATION
syn keyword SC_Macro SC_RUNNING SC_PAUSED SC_STOPPED SC_END_OF_SIMULATION
syn keyword SC_Macro SC_FORK SC_JOIN 
syn keyword SC_Macro SC_PROTOCOL SC_CTHREAD SC_THREAD 
syn keyword SC_Macro SC_CTOR SC_METHOD SC_MODULE SC_HAS_PROCESS
syn keyword SC_Macro SC_REPORT_INFO SC_REPORT_WARNING SC_REPORT_ERROR SC_REPORT_FATAL
syn keyword SC_Macro SC_REPORT_INFO_VERB
syn keyword SC_Macro SC_INFO SC_WARNING SC_ERROR SC_FATAL SC_MAX_SEVERITY
syn keyword SC_Macro SC_NONE SC_LOW SC_MEDIUM SC_HIGH SC_FULL SC_DEBUG
syn keyword SC_Macro SC_UNSPECIFIED SC_DO_NOTHING SC_THROW SC_LOG SC_DISPLAY
syn keyword SC_Macro SC_CACHE_REPORT SC_INTERRUPT SC_STOP SC_ABORT

" SystemC Functions
syn keyword SC_Func get_value
syn keyword SC_Func post
syn keyword SC_Func trywait 
syn keyword SC_Func kind
syn keyword SC_Func unlock
syn keyword SC_Func trylock
syn keyword SC_Func lock
syn keyword SC_Func num_available
syn keyword SC_Func nb_read
syn keyword SC_Func num_free 
syn keyword SC_Func nb_write
syn keyword SC_Func negedge_event
syn keyword SC_Func posedge_event
syn keyword SC_Func default_event
syn keyword SC_Func value_change_event
syn keyword SC_Func watching
syn keyword SC_Func duty_cycle 
syn keyword SC_Func name 
syn keyword SC_Func period
syn keyword SC_Func negedge
syn keyword SC_Func posedge
syn keyword SC_Func neg 
syn keyword SC_Func pos 
syn keyword SC_Func event
syn keyword SC_Func reset_signal_is
syn keyword SC_Func async_reset_signal_is
syn keyword SC_Func initialize
syn keyword SC_Func dont_initialize 
syn keyword SC_Func next_trigger
syn keyword SC_Func notify
syn keyword SC_Func wait 
syn keyword SC_Func read
syn keyword SC_Func before_of_elaboration
syn keyword SC_Func end_of_elaboration
syn keyword SC_Func start_of_simulation
syn keyword SC_Func write
syn keyword SC_Func sc_time_stamp 
syn keyword SC_Func sc_main 
syn keyword SC_Func sc_start
syn keyword SC_Func sc_trace
syn keyword SC_Func sc_trace_file 
syn keyword SC_Func sc_stop
syn keyword SC_Func sc_set_time_resolution 
syn keyword SC_Func sc_get_default_time_unit
syn keyword SC_Func sc_get_time_resolution 
syn keyword SC_Func sc_set_default_time_unit
syn keyword SC_Func sc_assert
syn keyword SC_Func to_string

" These can be used as streams too
syn keyword SC_Func sc_core
syn keyword SC_Func sensitive sensitive_neg sensitive_pos
syn keyword SC_Func to_bool() to_char() to_int() to_uint() to_short() to_ushort()
syn keyword SC_Func to_long() to_ulong() to_int64() to_uint64() to_double() to_float()
syn keyword SC_Func to_dec() to_bin() to_oct() to_hex()
syn keyword SC_Func and_reduce() nand_reduce() or_reduce() nor_reduce() xor_reduce() xnor_reduce()

" SystemC Communication classes
syn keyword SC_Comu sc_clock sc_in_clk sc_reset
syn keyword SC_Comu sc_buffer sc_fifo sc_fifo_in sc_fifo_out
syn keyword SC_Comu sc_fifo_nonblocking_in_if sc_fifo_blocking_in_if sc_fifo_in_if 
syn keyword SC_Comu sc_fifo_nonblocking_out_if sc_fifo_blocking_out_if sc_fifo_out_if 
syn keyword SC_Comu sc_event sc_event_queue sc_event_and_list sc_event_or_list
syn keyword SC_Comu sc_in sc_inout sc_out sc_in_rv sc_inout_rv sc_out_rv sc_signal
syn keyword SC_Comu sc_channel sc_port sc_export sc_interface sc_channel sc_prim_channel
syn keyword SC_Comu sc_semaphore sc_semaphore_if
syn keyword SC_Comu sc_mutex sc_mutex_if sc_host_mutex

" SystemC Utils classes
syn keyword SC_Util sc_report sc_report_handler sc_vector 

" SystemC Datatypes and xxx classes 
syn keyword SC_Type sc_object sc_attribute sc_attr_cltn
syn keyword SC_Type sc_module sc_module_name sc_spawn_options sc_spawn
syn keyword SC_Type sc_time sc_bit sc_bv sc_logic sc_lv
syn keyword SC_Type sc_signed sc_unsigned sc_int sc_uint sc_bigint sc_biguint
syn keyword SC_Type sc_fix sc_fix_fast sc_fixed sc_fixed_fast
syn keyword SC_Type sc_ufix sc_ufix_fast sc_ufixed sc_ufixed_fast
syn keyword SC_Type sc_fxval sc_fxval_fast sc_fxnum sc_fxnum_fast

syn keyword SC_Type SC_ZERO_TIME SC_FS SC_PS SC_NS SC_US SC_MS SC_SEC
syn keyword SC_Type SC_DEC SC_CSD
syn keyword SC_Type SC_BIN SC_BIN_US SC_BIN_SM
syn keyword SC_Type SC_OCT SC_OCT_US SC_OCT_SM
syn keyword SC_Type SC_HEX SC_HEX_US SC_HEX_SM
syn keyword SC_Type SC_LOGIC_0 SC_LOGIC_1 SC_LOGIC_Z SC_LOGIC_X

" TLM classes
syn keyword TLM_Class tlm_quantumkeeper tlm_dmi
syn keyword TLM_Class tlm_transport_if tlm_fw_transport_if tlm_bw_transport_if tlm_transport_dbg_if
syn keyword TLM_Class tlm_mm_interface tlm_extension tlm_generic_payload tlm_phase
syn keyword TLM_Class tlm_initiator_socket tlm_target_socket 
syn keyword TLM_Class tlm_analysis_fifo tlm_analysis_if tlm_analysis_port 
syn keyword TLM_Class tlm_array tlm_fifo 
" TLM Functions
syn keyword TLM_Func b_transport nb_transport_fw nb_transport_bw
syn keyword TLM_Func invalidate_direct_mem_ptr transport_dbg

" And the highlighting
hi SC_Func ctermfg=6  guifg=darkcyan
hi def link SC_Macro Constant
hi def link SC_Util Constant
hi def link SC_Comu Type
hi def link SC_Type Type
hi def link TLM_Func SC_Func
hi def link TLM_Class Type

" echohl Comment | echo "Detected SystemC file" | echohl None
echohl Comment | echohl None

" vim: foldmethod=marker