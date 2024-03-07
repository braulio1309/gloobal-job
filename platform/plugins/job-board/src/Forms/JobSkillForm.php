<?php

namespace Botble\JobBoard\Forms;

use Botble\Base\Forms\FieldOptions\IsDefaultFieldOption;
use Botble\Base\Forms\FieldOptions\NameFieldOption;
use Botble\Base\Forms\FieldOptions\SortOrderFieldOption;
use Botble\Base\Forms\FieldOptions\StatusFieldOption;
use Botble\Base\Forms\Fields\NumberField;
use Botble\Base\Forms\Fields\OnOffField;
use Botble\Base\Forms\Fields\SelectField;
use Botble\Base\Forms\Fields\TextField;
use Botble\Base\Forms\FormAbstract;
use Botble\JobBoard\Http\Requests\JobSkillRequest;
use Botble\JobBoard\Models\JobSkill;

class JobSkillForm extends FormAbstract
{
    public function setup(): void
    {
        $this
            ->setupModel(new JobSkill())
            ->setValidatorClass(JobSkillRequest::class)
            ->add('name', TextField::class, NameFieldOption::make()->required()->toArray())
            ->add('order', NumberField::class, SortOrderFieldOption::make()->toArray())
            ->add('is_default', OnOffField::class, IsDefaultFieldOption::make()->toArray())
            ->add('status', SelectField::class, StatusFieldOption::make()->toArray())
            ->setBreakFieldPoint('status');
    }
}
