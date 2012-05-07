<?php

class MemberPage extends Page{

	static $has_one = array(
		'Image'	=>	'Image'
	);
	static $has_many = array(
		'Links'	=>	'MemberLink'
	);

	function getCMSFields($params=null){
		$fields = parent::getCMSFields($params);
		$image = new ImageUploadField('Image');
		$links = new HasManyDataObjectManager(
			$this,'Links','MemberLink'
		);
		$fields->addFieldToTab('Root.Content.Social',$image);
		$fields->addFieldToTab('Root.Content.Social',$links);
		return $fields;
	}
	
}
