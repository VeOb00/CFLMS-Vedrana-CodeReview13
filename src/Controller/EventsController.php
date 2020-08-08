<?php

namespace App\Controller;

use App\Entity\Events;
use App\Form\EventsType;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @Route("/events")
 */
class EventsController extends AbstractController
{
    /**
     * @Route("/", name="events_index", methods={"GET"})
     */
    public function index(): Response
    {
        $events = $this->getDoctrine()
            ->getRepository(Events::class)
            ->findAll();

        return $this->render('events/index.html.twig', [
            'events' => $events,
        ]);
    }

    /**
     * @Route("/new", name="events_new", methods={"GET","POST"})
     */
    public function new(Request $request): Response
    {
        $event = new Events();
        $form = $this->createForm(EventsType::class, $event);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            if ($event->getImage() != null) {
                $fileName = $this->saveImage($form);
                $event->setImage($fileName);
            }

            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($event);
            $entityManager->flush();

            return $this->redirectToRoute('events_index');
        }

        return $this->render('events/new.html.twig', [
            'event' => $event,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}", name="events_show", methods={"GET"})
     */
    public function show(Events $event): Response
    {
        return $this->render('events/show.html.twig', [
            'event' => $event,
        ]);
    }

    /**
     * @Route("/{id}/edit", name="events_edit", methods={"GET","POST"})
     */
    public function edit(Request $request, Events $event): Response
    {
        $oldImage = $event->getImage();
        $event->setImage(null);
        $form = $this->createForm(EventsType::class, $event);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager = $this->getDoctrine()->getManager();
            if ($event->getImage() == null) {
                $event->setImage($oldImage);
            } else {
                $fileName = $this->saveImage($form);
                $event->setImage($fileName);
            }
            $entityManager->persist($event);
            $entityManager->flush();

//            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('events_index');
        }

        return $this->render('events/edit.html.twig', [
            'event' => $event,
            'form' => $form->createView(),
            'oldImage' => $oldImage
        ]);
    }

    /**
     * @Route("/{id}", name="events_delete", methods={"DELETE"})
     */
    public function delete(Request $request, Events $event): Response
    {
        if ($this->isCsrfTokenValid('delete' . $event->getId(), $request->request->get('_token'))) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->remove($event);
            $entityManager->flush();
        }

        return $this->redirectToRoute('events_index');
    }

    /**
     * @param \Symfony\Component\Form\FormInterface $form
     * @return mixed
     */
    public function saveImage(\Symfony\Component\Form\FormInterface $form)
    {
        $imageFile = $form['image']->getData();
        $fileName = $imageFile->getClientOriginalName();
        $imageFile->move("../assets/upload", $fileName);
        return $fileName;
    }
}
