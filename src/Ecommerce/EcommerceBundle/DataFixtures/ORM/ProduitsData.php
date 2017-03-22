<?php
namespace Ecommerce\EcommerceBundle\DataFixtures\ORM;

use Doctrine\Common\DataFixtures\AbstractFixture;
use Doctrine\Common\DataFixtures\OrderedFixtureInterface;
use Doctrine\Common\Persistence\ObjectManager;
use Ecommerce\EcommerceBundle\Entity\Produits;

class ProduitsData extends AbstractFixture implements OrderedFixtureInterface
{
    public function load(ObjectManager $manager)
    {
        $produit1 = new Produits();
        $produit1->setCategorie($this->getReference('categorie1'));
        $produit1->setDescription("Processeur Intel Celeron N3050 à 2.16 GHz, Mémoire : 2 Go, Stockage : 32 Go eMMC Ecran 14\" HD Slim");
        $produit1->setDisponible('1');
        $produit1->setImage($this->getReference('media3'));
        $produit1->setNom('PC Ultra-Portable Asus E403SA-WX0004T 14');
        $produit1->setPrix('255');
        $produit1->setTva($this->getReference('tva2'));
        $manager->persist($produit1);

        $produit2 = new Produits();
        $produit2->setCategorie($this->getReference('categorie1'));
        $produit2->setDescription("Les points forts :
CPU : Intel Celeron N3050 - 1.6 GHz
14\" - 1366 x 768 ( HD )
Processeur graphique : Intel HD Graphics
Détails des services et de la maintenance : Garantie limitée - pièces et main d'oeuvre - 1 an - enlèvement et retour
RAM : 2 Go ( la mémoire fournie est soudée )
Interfaces : HDMI, Prise combo casque-microphone, 2 x USB 2.0, USB 3.0, LAN
Sans fil : 802.11n
Système d'exploitation : Windows 10 Edition Familiale 64 bits
Webcam intégrée
Lecteur de carte mémoire : Oui ( carte SD )");
        $produit2->setDisponible('1');
        $produit2->setImage($this->getReference('media4'));
        $produit2->setNom('HP Ordinateur portable 14-ac120nf - Noir - 14" - 2');
        $produit2->setPrix('219,00');
        $produit2->setTva($this->getReference('tva2'));
        $manager->persist($produit2);

        $produit3 = new Produits();
        $produit3->setCategorie($this->getReference('categorie1'));
        $produit3->setDescription(" Les points forts :
CPU : Intel Core M (5ème génération) 5Y31 - 0.9 GHz
12.5\" - IPS - 1920 x 1080 ( Full HD )
Processeur graphique : Intel HD Graphics 5300
Détails des services et de la maintenance : Garantie limitée - 1 an - enlèvement et retour
RAM : 4 Go ( la mémoire fournie est soudée )
Interfaces : VGA ( sur dock-clavier ), LAN ( sur dock-clavier ), Micro-USB 2.0, Socle, HDMI ( sur dock-clavier ), Micro-HDMI, Prise combo casque-microphone, 2 x USB 3.0 ( sur dock-clavier )
Sans fil : Bluetooth 4.0, 802.11ac
Système d'exploitation : Windows 8.1 Pro Edition 64 bits ( préinstallé )
Webcam intégrée
Lecteur de carte mémoire : Oui ( microSD ) ");
        $produit3->setDisponible('1');
        $produit3->setImage($this->getReference('media5'));
        $produit3->setNom('Toshiba PC Portable 2-en-1 Z20T tactile Noir - Por');
        $produit3->setPrix('600,00');
        $produit3->setTva($this->getReference('tva2'));
        $manager->persist($produit3);
        
        $produit4 = new Produits();
        $produit4->setCategorie($this->getReference('categorie1'));
        $produit4->setDescription("Les points forts :
CPU : Intel Core i5 (6ème génération) 6300HQ - 2.3 GHz
15.6\" - 1366 x 768 ( HD )
Processeur graphique : NVIDIA GeForce GTX 950M - 2 Go DDR3 SDRAM
128 Go SSD - 1 To HDD - 5400 tours-min - SATA 6 Gb-s
Détails des services et de la maintenance : Garantie limitée - 2 ans - sur site
RAM : 4 Go ( 1 x 4 Go )
Interfaces : LAN, HDMI, Entrée microphone, Sortie casque, Mini DisplayPort, 2 x USB 3.0, USB 2.0, USB-C
Sans fil : Bluetooth 4.0, 802.11ac
Système d'exploitation : FreeDOS
Webcam intégrée");
        $produit4->setDisponible('1');
        $produit4->setImage($this->getReference('media6'));
        $produit4->setNom('MSI PC Portable Gamer GL62 6QD-027XFR - 15,6" HD');
        $produit4->setPrix('770,00');
        $produit4->setTva($this->getReference('tva2'));
        $manager->persist($produit4);
        
        $produit5 = new Produits();
        $produit5->setCategorie($this->getReference('categorie2'));
        $produit5->setDescription("Conçu en 2011 par les équipes du réseau social Twitter, Bootstrap a su au fil des années s'imposer auprès des web designers et intégrateurs de la planète souhaitant créer avec plus de facilité des sites web évolués. Aujourd'hui, Bootstrap est un des projets les plus suivis sur GitHub et sa communauté ne cesse de croître.");
        $produit5->setDisponible('1');
        $produit5->setImage($this->getReference('media7'));
        $produit5->setNom('Bootstrap 3');
        $produit5->setPrix('32,00');
        $produit5->setTva($this->getReference('tva2'));
        $manager->persist($produit5);
        
        $produit6 = new Produits();
        $produit6->setCategorie($this->getReference('categorie2'));
        $produit6->setDescription("Ce livre de la collection vBook se compose d'un livre de référence sur le webmarketing pour apprendre à définir, mettre en pratique et optimiser sa stratégie web et d'un complément sous forme de vidéo sur la stratégie web et les tendances du e-commerce.");
        $produit6->setDisponible('1');
        $produit6->setImage($this->getReference('media8'));
        $produit6->setNom('Webmarketing');
        $produit6->setPrix('39,00');
        $produit6->setTva($this->getReference('tva2'));
        $manager->persist($produit6);
		
		$produit7 = new Produits();
        $produit7->setCategorie($this->getReference('categorie1'));
        $produit7->setDescription(" Le PC Lenovo Yoga 500-14IBD navigue entre l'univers de la tablette et celui de l'ordinateur portable. En un seul coup de main, transformez votre appareil en poste de travail, en écran ou en tablette ! Profitez d'une navigation intuitive, attractive et fluide grâce à la technologie tactile. Son écran LED tactile 14 HD pivote à 360 degrés vous offrant différents angles de visualisation.");
        $produit7->setDisponible('1');
        $produit7->setImage($this->getReference('media1'));
        $produit7->setNom('LENOVO YOGA 500-14IBD');
        $produit7->setPrix('699,00');
        $produit7->setTva($this->getReference('tva2'));
        $manager->persist($produit7);
		
		$produit8 = new Produits();
        $produit8->setCategorie($this->getReference('categorie2'));
        $produit8->setDescription(" Le PC Lenovo Yoga 500-14IBD navigue entre l'univers de la tablette et celui de l'ordinateur portable. En un seul coup de main, transformez votre appareil en poste de travail, en écran ou en tablette ! Profitez d'une navigation intuitive, attractive et fluide grâce à la technologie tactile. Son écran LED tactile 14 HD pivote à 360 degrés vous offrant différents angles de visualisation.");
        $produit8->setDisponible('1');
        $produit8->setImage($this->getReference('media2'));
        $produit8->setNom('Développer avec Symfony2');
        $produit8->setPrix('33,00');
        $produit8->setTva($this->getReference('tva2'));
        $manager->persist($produit8);
        
        $manager->flush();
    }
    
    public function getOrder()
    {
        return 4;
    }
}