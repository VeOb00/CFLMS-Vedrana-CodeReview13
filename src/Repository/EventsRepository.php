<?php


namespace App\Repository;


use App\Entity\Events;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

class EventsRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Events::class);
    }
    /**
     * @return Events[]
     */
    public function findAllByCategory($category): array
    {
        $entityManager = $this->getEntityManager();

        $query = $entityManager->createQuery(
            'SELECT e
            FROM App\Entity\Events e
            WHERE e.category = :category
            ORDER BY e.name ASC'
        )->setParameter('category', $category);

        // returns an array of Product objects
        return $query->getResult();
    }

    /**
     * @return string[]
     */
    public function findAllCategoryTypes(): array {
        $entityManager = $this->getEntityManager();
        $govno = $entityManager->createQuery(
            'SELECT DISTINCT e.category FROM App\Entity\Events e'
        )->getArrayResult();

        return array_column($govno, "category");
    }

}