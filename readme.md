# RefineryCMS Forms Engine Generator

Documentation is still under construction.

## Description
Generates a custom forms based engine for Refinery automatically.
It works very similarly to the Refinery Engine generator.

The first string attribute should always be the one which is the title or name field in your model.

There must be at least one attribute.

## Requirements
At the time of writing this this generator requires refinerycms 0.9.8.5 (Rails 3) and all of its dependencies.
You can find that gem here: http://rubygems.org/gems/refinerycms

## Installation
You have two options to install.
1.
	A. Github Option
		Add to your Gemfile this line of code
		gem 'refinerycms-forms', :git => 'git@github.com:resolve/refinerycms-forms.git
	
	
	B. Install it locally
	   Add to your Gemfile this line of code
	   gem 'refinerycms-forms', :path => '/the/path/you/cloned/to'
	
2. run Bundle install


## Example
	
	rails generate refinery_form job_inquiry name:string email:string message:text job_type:radio brochure:checkbox location:select


## Additional Supported Field Types

  All field types that are supported by the Refinery Engine generator are supported
  with the addition of these form specific ones:

    radio           - creates a set of radio buttons based off Model::FIELD_NAMES
    checkbox        - creates a checkbox for true/false values.
    select          - creates a select list with options using Model::FIELD_NAMES


