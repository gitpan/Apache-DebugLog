package TestApache::does_it_work;

use Apache2::RequestRec ();
use Apache2::RequestIO  ();
use Apache2::DebugLog   ();

use Apache2::Const  -compile => qw(OK);

sub handler {
    my $r = shift;
    $r->content_type('text/plain');
    $r->print("1..2\n");
    $r->log_debug('foo', 3, 'omg teh debug!');
    $r->print("ok 1\n");
    $r->log_debugf('bar', 9, 'omg teh %s sprintf!', 'debug');
    $r->print("ok 2\n");

    Apache2::Const::OK;
}

1;
