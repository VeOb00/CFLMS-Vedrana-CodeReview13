<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Events
 *
 * @ORM\Table(name="events")
 * @ORM\Entity
 */
class Events
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $id;

    /**
     * @var string
     *
     * @ORM\Column(name="name", type="string", length=250, nullable=false)
     */
    private $name;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="eventDate", type="date", nullable=false)
     */
    private $eventdate;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="eventTime", type="time", nullable=false)
     */
    private $eventtime;

    /**
     * @var string
     *
     * @ORM\Column(name="description", type="string", length=500, nullable=false)
     */
    private $description;

    /**
     * @var string|null
     *
     * @ORM\Column(name="descriptionLong", type="text", length=0, nullable=true, options={"default"="NULL"})
     */
    private $descriptionlong = NULL;

    /**
     * @var string|null
     *
     * @ORM\Column(name="image", type="string", length=250, nullable=true, options={"default"="NULL"})
     */
    private $image = NULL;

    /**
     * @var int|null
     *
     * @ORM\Column(name="capacity", type="integer", nullable=true, options={"default"="NULL"})
     */
    private $capacity = NULL;

    /**
     * @var string|null
     *
     * @ORM\Column(name="email", type="string", length=125, nullable=true, options={"default"="NULL"})
     */
    private $email = NULL;

    /**
     * @var string|null
     *
     * @ORM\Column(name="phoneNr", type="string", length=30, nullable=true, options={"default"="NULL"})
     */
    private $phonenr = NULL;

    /**
     * @var string|null
     *
     * @ORM\Column(name="country", type="string", length=50, nullable=true, options={"default"="NULL"})
     */
    private $country = NULL;

    /**
     * @var string|null
     *
     * @ORM\Column(name="city", type="string", length=50, nullable=true, options={"default"="NULL"})
     */
    private $city = NULL;

    /**
     * @var string|null
     *
     * @ORM\Column(name="address", type="string", length=50, nullable=true, options={"default"="NULL"})
     */
    private $address = NULL;

    /**
     * @var string|null
     *
     * @ORM\Column(name="eventUrl", type="string", length=250, nullable=true, options={"default"="NULL"})
     */
    private $eventurl = NULL;

    /**
     * @var string|null
     *
     * @ORM\Column(name="category", type="string", length=25, nullable=true, options={"default"="NULL"})
     */
    private $category = NULL;

    /**
     * @var int|null
     *
     * @ORM\Column(name="zipcode", type="integer", nullable=true, options={"default"="NULL"})
     */
    private $zipcode = NULL;



    public function getId(): ?int
    {
        return $this->id;
    }

    public function getName(): ?string
    {
        return $this->name;
    }

    public function setName(string $name): self
    {
        $this->name = $name;

        return $this;
    }

    public function getEventdate(): ?\DateTimeInterface
    {
        return $this->eventdate;
    }

    public function setEventdate(\DateTimeInterface $eventdate): self
    {
        $this->eventdate = $eventdate;

        return $this;
    }

    public function getEventtime(): ?\DateTimeInterface
    {
        return $this->eventtime;
    }

    public function setEventtime(\DateTimeInterface $eventtime): self
    {
        $this->eventtime = $eventtime;

        return $this;
    }

    public function getDescription(): ?string
    {
        return $this->description;
    }

    public function setDescription(string $description): self
    {
        $this->description = $description;

        return $this;
    }

    public function getDescriptionlong(): ?string
    {
        return $this->descriptionlong;
    }

    public function setDescriptionlong(?string $descriptionlong): self
    {
        $this->descriptionlong = $descriptionlong;

        return $this;
    }

    public function getImage(): ?string
    {
        return $this->image;
    }

    public function setImage(?string $image): self
    {
        $this->image = $image;

        return $this;
    }

    public function getCapacity(): ?int
    {
        return $this->capacity;
    }

    public function setCapacity(?int $capacity): self
    {
        $this->capacity = $capacity;

        return $this;
    }

    public function getEmail(): ?string
    {
        return $this->email;
    }

    public function setEmail(?string $email): self
    {
        $this->email = $email;

        return $this;
    }

    public function getPhonenr(): ?string
    {
        return $this->phonenr;
    }

    public function setPhonenr(?string $phonenr): self
    {
        $this->phonenr = $phonenr;

        return $this;
    }

    public function getCountry(): ?string
    {
        return $this->country;
    }

    public function setCountry(?string $country): self
    {
        $this->country = $country;

        return $this;
    }

    public function getCity(): ?string
    {
        return $this->city;
    }

    public function setCity(?string $city): self
    {
        $this->city = $city;

        return $this;
    }

    public function getAddress(): ?string
    {
        return $this->address;
    }

    public function setAddress(?string $address): self
    {
        $this->address = $address;

        return $this;
    }

    public function getEventurl(): ?string
    {
        return $this->eventurl;
    }

    public function setEventurl(?string $eventurl): self
    {
        $this->eventurl = $eventurl;

        return $this;
    }

    public function getCategory(): ?string
    {
        return $this->category;
    }

    public function setCategory(?string $category): self
    {
        $this->category = $category;

        return $this;
    }

    public function getZipcode(): ?int
    {
        return $this->zipcode;
    }

    public function setZipcode(?int $zipcode): self
    {
        $this->zipcode = $zipcode;

        return $this;
    }
}
