<?php

namespace App\Form;

use App\Entity\Events;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\CountryType;
use Symfony\Component\Form\Extension\Core\Type\DateType;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\Extension\Core\Type\FileType;
use Symfony\Component\Form\Extension\Core\Type\IntegerType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\TimeType;
use Symfony\Component\Form\Extension\Core\Type\UrlType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;


class EventsType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('name', TextType::class, ['help' => 'Required', 'required' => 'true', 'label' => 'Event Title:'])
            ->add('eventdate', DateType::class, ['help' => 'Required', 'widget' => 'single_text', 'format' => 'yyyy-MM-dd', 'required' => true, 'label' => 'Event Date:'])
            ->add('eventtime', TimeType::class, ['help' => 'Required', 'widget' => 'single_text', 'required' => true, 'label' => 'Event Time:'])
            ->add('description', TextareaType::class, [ 'help' => 'Required, max 500 characters', 'required' => true, 'label' => 'Event subtitle or except:'])
            ->add('descriptionlong', TextareaType::class, ['help' => 'Optional', 'required' => false, 'label' => 'Event description long (for the more info page):'])
            ->add('image', FileType::class, ['help' => 'Recommended', 'required' => false])
            ->add('capacity', IntegerType::class, ['help' => 'Optional', 'required' => false])
            ->add('email', EmailType::class, ['help' => 'Optional', 'required' => false, 'label' => 'Contact e-mail address:'])
            ->add('phonenr', TextType::class, ['help' => 'Optional', 'required' => false, 'label' => 'Contact Tel. Nr.:'])
            ->add('country', CountryType::class, ['required' => false])
            ->add('city', TextType::class, ['help' => 'Optional', 'required' => false])
            ->add('zipcode', IntegerType::class, ['help' => 'Optional', 'required' => false])
            ->add('address', TextType::class, ['help' => 'Optional', 'required' => false, 'label' => 'Street name and number:'])
            ->add('eventurl', UrlType::class, ['help' => 'Optional', 'required' => false, 'label' => 'URL address of event:'])
            ->add('category', ChoiceType::class, ['choices' => ['music' => 'music', 'sports' => 'sports', 'film' => 'film', 'theatre' => 'theatre', 'exhibitions' => 'exhibitions', 'other' => 'other']]);
    }

//, FileType::class, ['help' => 'Optional', 'required' => false]
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Events::class,
        ]);
    }
}
