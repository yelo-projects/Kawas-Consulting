<?php

class VacanciesPage extends Page{

	static $allowed_children = array('Vacancy');
	static $default_child = 'Vacancy';
}

class VacanciesPage_Controller extends Page_Controller{
	
}