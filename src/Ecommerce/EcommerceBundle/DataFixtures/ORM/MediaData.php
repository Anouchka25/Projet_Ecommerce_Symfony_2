<?php
namespace Ecommerce\EcommerceBundle\DataFixtures\ORM;

use Doctrine\Common\DataFixtures\AbstractFixture;
use Doctrine\Common\DataFixtures\OrderedFixtureInterface;
use Doctrine\Common\Persistence\ObjectManager;
use Ecommerce\EcommerceBundle\Entity\Media;

class MediaData extends AbstractFixture implements OrderedFixtureInterface
{
    public function load(ObjectManager $manager)
    {
        $media1 = new Media();
        $media1->setPath('http://image.darty.com/null_k1601164192621G_154722761.jpg');
        $media1->setAlt('LENOVO YOGA 500-14IBD');
        $manager->persist($media1);
        
        $media2 = new Media();
        $media2->setPath('http://static.eyrolles.com/img/2/2/1/2/1/4/1/3/9782212141313_h180.png');
        $media2->setAlt('Développer avec Symfony2');
        $manager->persist($media2);

        $media3 = new Media();
        $media3->setPath('http://static.fnac-static.com/multimedia/Images/FR/NR/95/30/75/7680149/1520-3.jpg');
        $media3->setAlt('PC Ultra-Portable Asus E403SA-WX0004T 14');
        $manager->persist($media3);   
            
        $media4 = new Media();
        $media4->setPath('http://i2.cdscdn.com/pdt2/0/n/f/1/700x700/14ac120nf/rw/hp-ordinateur-portable-14-ac120nf-noir-14-2.jpg');
        $media4->setAlt('HP Ordinateur portable 14-ac120nf - Noir - 14" - 2');
        $manager->persist($media4);              
        
        $media5 = new Media();
        $media5->setPath('http://i2.cdscdn.com/pdt2/2/5/8/1/700x700/tos4051528178258/rw/toshiba-pc-portable-2-en-1-z20t-tactile-noir-por.jpg');
        $media5->setAlt('Toshiba PC Portable 2-en-1 Z20T tactile Noir - Por');
        $manager->persist($media5);
        
        $media6 = new Media();
        $media6->setPath('http://i2.cdscdn.com/pdt2/0/2/7/1/700x700/9s716j612027/rw/msi-pc-portable-gamer-gl62-6qd-027xfr-15-6-hd.jpg');
        $media6->setAlt('MSI PC Portable Gamer GL62 6QD-027XFR - 15,6" HD');
        $manager->persist($media6);
        
        $media7 = new Media();
        $media7->setPath('http://static.eyrolles.com/img/2/2/1/2/1/4/1/3/9782212141320_h430.jpg');
        $media7->setAlt('Bootstrap 3');
        $manager->persist($media7);
        
        $media8 = new Media();
        $media8->setPath('http://static.eyrolles.com/img/2/4/0/9/0/0/0/9/9782409000942_h430.jpg');
        $media8->setAlt('Webmarketing');
        $manager->persist($media8);
		
	
        
        $manager->flush();
        
        $this->addReference('media1', $media1);
        $this->addReference('media2', $media2);
        $this->addReference('media3', $media3);
        $this->addReference('media4', $media4);
        $this->addReference('media5', $media5);        
        $this->addReference('media6', $media6);
        $this->addReference('media7', $media7);        
        $this->addReference('media8', $media8);
    }
    
    public function getOrder()
    {
        return 1;
    }
}