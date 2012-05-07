<?php

class MemberLink extends LinkExternal{
	static $has_one = array(
		'Member'	=>	'MemberPage'
	);
}
