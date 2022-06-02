///////////////////////////////////////////////////////////////////////
/// Copyright (c) 1988-2022 $organization$
///
/// This software is provided by the author and contributors ``as is'' 
/// and any express or implied warranties, including, but not limited to, 
/// the implied warranties of merchantability and fitness for a particular 
/// purpose are disclaimed. In no event shall the author or contributors 
/// be liable for any direct, indirect, incidental, special, exemplary, 
/// or consequential damages (including, but not limited to, procurement 
/// of substitute goods or services; loss of use, data, or profits; or 
/// business interruption) however caused and on any theory of liability, 
/// whether in contract, strict liability, or tort (including negligence 
/// or otherwise) arising in any way out of the use of this software, 
/// even if advised of the possibility of such damage.
///
///   File: main.hpp
///
/// Author: $author$
///   Date: 3/5/2022
///////////////////////////////////////////////////////////////////////
#ifndef XOS_APP_CONSOLE_NETWORK_SOCKETS_PROTOCOL_UDTTP_CLIENT_MAIN_HPP
#define XOS_APP_CONSOLE_NETWORK_SOCKETS_PROTOCOL_UDTTP_CLIENT_MAIN_HPP

#include "xos/app/console/network/sockets/protocol/udttp/client/main_opt.hpp"
#include "xos/io/string/output.hpp"

namespace xos {
namespace app {
namespace console {
namespace network {
namespace sockets {
namespace protocol {
namespace udttp {
namespace client {

/// class maint
template 
<class TStringOutput = xos::io::string::output,
 class TExtends = xos::app::console::network::sockets::protocol::udttp::client::main_opt, 
 class TImplements = typename TExtends::implements>

class exported maint: virtual public TImplements, public TExtends {
public:
    typedef TImplements implements;
    typedef TExtends extends;
    typedef maint derives;

    typedef typename extends::char_t char_t;
    typedef typename extends::end_char_t end_char_t;
    enum { end_char = extends::end_char };
    typedef typename extends::string_t string_t;
    typedef typename extends::reader_t reader_t;
    typedef typename extends::writer_t writer_t;
    typedef typename extends::file_t file_t;

    /// constructor / destructor
    maint(): run_(0) {
    }
    virtual ~maint() {
    }
private:
    maint(const maint& copy) {
        throw exception(exception_unexpected);
    }

protected:
    typedef typename extends::in_reader_t in_reader_t;
    typedef typename extends::out_writer_t out_writer_t;
    typedef typename extends::err_writer_t err_writer_t;
    typedef typename extends::output_t output_t;
    typedef typename extends::output_to_t output_to_t;
    typedef TStringOutput string_output_t;

    typedef typename extends::content_t content_t;
    typedef typename extends::response_t response_t;
    typedef typename extends::request_method_t request_method_t;
    typedef typename extends::request_t request_t;

    /// ...run
    int (derives::*run_)(int argc, char_t** argv, char_t** env);
    virtual int run(int argc, char_t** argv, char_t** env) {
        int err = 0;
        if ((run_)) {
            err = (this->*run_)(argc, argv, env);
        } else {
            err = extends::run(argc, argv, env);
        }
        return err;
    }

    /// ...output_generate_client_hello_run
    virtual int output_generate_client_hello_run(int argc, char_t** argv, char_t** env) {
        output_t &output = this->output();
        string_output_t string_output(content_string_);
        output_to_t* old_output = output.set_output_to(&string_output);
        int err = 0;
        if (!(err = output.output_generate_client_hello())) {
            const char_t* chars = 0; size_t length = 0;
            
            if ((chars = content_string_.has_chars(length))) {
                this->all_set_content(chars, argc, argv, env);
            }
        }
        output.set_output_to(old_output);
        return err;
    }
    virtual int set_output_generate_client_hello_run(int argc, char_t** argv, char_t** env) {
        int err = 0;
        if (!(err = output_generate_client_hello_run(argc, argv, env))) {
        }
        return err;
    }

    /// ...output_client_hello_message_run
    virtual int output_client_hello_message_run(int argc, char_t** argv, char_t** env) {
        int err = 0;
        output_t& output = this->output(); 
        output.output_client_hello_message();
        return err;
    }

    /// ...outout_response_content
    virtual int outout_response_content(response_t &rs, int argc, char_t** argv, char_t** env) {
        int err = 0;
        const char_t* chars = 0; size_t length = 0;

        if ((chars = rs.content_chars(length))) {
            bool& verbose_output = this->verbose_output(); 
            output_t& output = this->output(); 

            this->outln(chars, length);
            output.set_verbose_output(verbose_output);
            output.unset_on_set_file_literals();
            if (!(err = output.on_set_server_hello_message_option(chars))) {
                output_to_t* old_output = output.unset_output_to();
                output.output_server_hello();
                output.set_output_to(old_output);
            }
        }
        return err;
    }

    /// ...option...
    virtual int on_set_client_hello_message_option
    (const char_t* optarg, int argc, char_t**argv, char_t**env) {
        int err = 0;
        if ((optarg) && (optarg[0])) {
            output_t& output = this->output(); 
            output.on_set_client_hello_message_option(optarg);
        }
        return err;
    }
    virtual int on_file_input_option
    (int optval, const char_t* optarg, const char_t* optname,
     int optind, int argc, char_t**argv, char_t**env) {
        int err = 0;
        output_t& output = this->output(); 
        output.set_on_set_file_literals();
        return err;
    }

protected:
    string_t content_string_;
}; /// class maint
typedef maint<> main;

} /// namespace client
} /// namespace udttp
} /// namespace protocol
} /// namespace sockets
} /// namespace network
} /// namespace console
} /// namespace app
} /// namespace xos

#endif /// ndef XOS_APP_CONSOLE_NETWORK_SOCKETS_PROTOCOL_UDTTP_CLIENT_MAIN_HPP
