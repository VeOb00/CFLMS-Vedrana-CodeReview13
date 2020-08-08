<?php


namespace App\Controller;


use App\Entity\Events;
use App\Repository\EventsRepository;
use Psr\Log\LoggerInterface;
use Symfony\Bridge\Monolog\Logger;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @Route("/")
 */
class HomepageController extends AbstractController
{
    /**
     * @Route("/", name="home_index", methods={"GET"})
     */
    public function index(EventsRepository $eventsRepository, LoggerInterface $logger): Response
    {
        $events = $this->getDoctrine()
            ->getRepository(Events::class)
            ->findAll();

        $categoryTypes = $eventsRepository->findAllCategoryTypes();

        return $this->render('home/index.html.twig', [
            'events' => $events,
            'categoryTypes' => $categoryTypes
        ]);
    }

    /**
     * @Route("/{id}", name="home_show", methods={"GET"})
     */
    public function show(Events $event): Response
    {
        return $this->render('home/show.html.twig', [
            'event' => $event,
        ]);
    }

    /**
     * @Route("/filter/{category}", name="home_filter", methods={"GET"})
     */
    public function filterEvents(string $category, EventsRepository $eventsRepository): Response
    {
        $events = $eventsRepository->findAllByCategory($category);
        $categoryTypes = $eventsRepository->findAllCategoryTypes();

        return $this->render('home/index.html.twig', [
            'events' => $events,
            'categoryTypes' => $categoryTypes
        ]);
    }

//    /**
//     * @Route("/{category}", name="home_filter", methods={"GET"})
//     */
//    public function filter(Events $category): Response
//    {
//        $event = $this->getDoctrine()->getRepository("App:Events")->findByCategory($category);
//        return $this->render('home/index.html.twig', [
//            'event' => $event,
//        ]);
//    }
}