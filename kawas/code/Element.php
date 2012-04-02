<?php

class Element extends Page{
	static $db = array(
		'Title' =>  'Varchar',
		'Body'  =>  'HTMLText',
		'Starts'	=>	'SS_DateTime',
		'Ends'		=>	'SS_DateTime',
	);

	static $allowed_children = 'none';
	static $can_be_root = false;

	public function getCMSFields() {    
		$fields = $this->getFields();
		$Main = new TabSet('Root','Root',new TabSet('Main','Main'));
		$fieldSet = new FieldSet();
		$fieldSet->push($Main);
		$fieldSet->addFieldToTab('Root.Main.Content', $fields['Title']);
		$fieldSet->addFieldToTab('Root.Main.Content', $fields['Body']);
		$fieldSet->addFieldToTab('Root.Main.Meta', $fields['Starts']);
		$fieldSet->addFieldToTab('Root.Main.Meta', $fields['Ends']);
		return $fieldSet;
	}

	public function getCMSFields_forPopup(){
		$fields = new FieldSet($this->getFields());
		return $fields;
	}

	public function getFields(){
		$r =  '<em>'._t('Post.LABELREQUIRED','*').'</em>';
		$TitleField = new TextField('Title', _t('Post.LABELTITLE','Title').$r);
		$BodyField = new HTMLEditorField('Body', _t('Post.LABELBODY','Body').$r,20,10);
		$StartsDateField = new DateTimeField('Starts',_t('Post.LABELDATESTARTS','Starting Date'));
		$StartsDateField->getDateField()->setConfig('showcalendar', true);
		$StartsDateField->getTimeField()->setConfig('showdropdown', true);
		$StartsDateField->getDateField()->setConfig('timeformat', 'dd/MM/YYYY');
		$EndsDateField = new DateTimeField('Ends',_t('Post.LABELDATEENDS','Ending Date'));
		$EndsDateField->getDateField()->setConfig('showcalendar', true);
		$EndsDateField->getTimeField()->setConfig('showdropdown', true);
		$EndsDateField->getDateField()->setConfig('timeformat', 'dd/MM/YYYY');
		$fields = array(
			'Title'		=>	$TitleField,
			'Body'		=>	$BodyField,
			'Starts'	=>	$StartsDateField,
			'Ends'		=>	$EndsDateField
		);
		return $fields;
	}


	public function requiredFields(){
		new RequiredFields('Title', 'Body');
	}

	public function getContent(){
		return $this->Body;
	}

	public function getEndingDate(){
		return $this->_getDay('Ends');
	}

	public function getEndingTime(){
		return $this->_getTime('Ends');
	}

	public function getStartingDate(){
		return $this->_getDay('Starts');
	}

	public function getStartingTime(){
		return $this->_getTime('Starts');
	}

	protected function _getDay($field){
		$date = $this->obj($field)->getValue();
		if($date){return date('d M Y',strtotime($date));}
	}

	protected function _getTime($field){
		$date = $this->obj($field)->getValue();
		if($date){return date('H:i',strtotime($date));}
	}

}
class Element_Controller extends Page_Controller{
	
}
