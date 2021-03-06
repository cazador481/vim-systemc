"=============================================================================
" Vim Modeling Support for SystemC
" FILE: systemc.vim
" AUTHOR:  Kocha <kocha.lsifrontend@gmail.com>
" Last Modified: 12 February 2013.
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
" Version: 0.4.0, for Vim 7.3
"=============================================================================

"=================================================
" Check if the file is a SystemC file
"
function! Check_SystemC()
 let s:env = 0
 let line_num = (line('$') > 50)? 50 : line('$')
 while (line_num)
   " Check for systemc keywords
   if getline(line_num) =~? 'systemc\|sc_[a-z]*\|scv_[a-z]*\|tlm_[a-z]*\|sca_[a-z]*\'
      " SYSTMEC_HOME
      if $SYSTEMC_HOME != ""
        set path+=$SYSTEMC_HOME/include
        let s:env += 1
      endif
      " TLM_HOME
      if $TLM_HOME != ""
        let s:env += 2
        set path+=$TLM_HOME/include/tlm
      endif
      " SYSTEMC_AMS_HOME
      if $SYSTEMC_AMS_HOME != ""
        let s:env += 4
        set path+=$SYSTEMC_AMS_HOME/include
      endif
      " SCV_HOME
      if $SCV_HOME != ""
        let s:env += 8
        set path+=$SCV_HOME/include
      endif
      " set syntastic_cpp_cflags
      if s:env == 1
        let b:syntastic_cpp_cflags = ' -I$SYSTEMC_HOME/include'
      elseif s:env == 2
        let b:syntastic_cpp_cflags = ' -I$TLM_HOME/include/tlm'
      elseif s:env == 3
        let b:syntastic_cpp_cflags = ' -I$SYSTEMC_HOME/include -I$TLM_HOME/include/tlm'
      elseif s:env == 4
        let b:syntastic_cpp_cflags = ' -I$SYSTEMC_AMS_HOME/include'
      elseif s:env == 5
        let b:syntastic_cpp_cflags = ' -I$SYSTEMC_HOME/include -I$SYSTEMC_AMS_HOME/include'
      elseif s:env == 6
        let b:syntastic_cpp_cflags = ' -I$TLM_HOME/include/tlm -I$SYSTEMC_AMS_HOME/include'
      elseif s:env == 7
        let b:syntastic_cpp_cflags = ' -I$SYSTEMC_HOME/include -I$TLM_HOME/include/tlm -I$SYSTEMC_AMS_HOME/include'
      elseif s:env == 8
        let b:syntastic_cpp_cflags = ' -I$SCV_HOME/include'
      elseif s:env == 9
        let b:syntastic_cpp_cflags = ' -I$SCV_HOME/include -I$SYSTEMC_HOME/include'
      elseif s:env == 10
        let b:syntastic_cpp_cflags = ' -I$SCV_HOME/include -I$TLM_HOME/include/tlm'
      elseif s:env == 11
        let b:syntastic_cpp_cflags = ' -I$SCV_HOME/include -I$SYSTEMC_HOME/include -I$TLM_HOME/include/tlm'
      elseif s:env == 12
        let b:syntastic_cpp_cflags = ' -I$SCV_HOME/include -I$SYSTEMC_AMS_HOME/include'
      elseif s:env == 13
        let b:syntastic_cpp_cflags = ' -I$SCV_HOME/include -I$SYSTEMC_HOME/include -I$SYSTEMC_AMS_HOME/include'
      elseif s:env == 14
        let b:syntastic_cpp_cflags = ' -I$SCV_HOME/include -I$TLM_HOME/include/tlm -I$SYSTEMC_AMS_HOME/include'
      elseif s:env == 15
        let b:syntastic_cpp_cflags = ' -I$SCV_HOME/include -I$SYSTEMC_HOME/include -I$TLM_HOME/include/tlm -I$SYSTEMC_AMS_HOME/include'
      endif
      return "systemc"
   endif
   let line_num -= 1
 endwhile
 return "cpp"
endfunction

" vim: foldmethod=marker
