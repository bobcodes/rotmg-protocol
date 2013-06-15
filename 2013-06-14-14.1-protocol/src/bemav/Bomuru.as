package bemav
{
   import flash.display.Sprite;
   import typoc.Gequrenaj;
   import mukyrosu.Qanyduk;


   public class Bomuru extends Sprite implements Gequrenaj
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Bomuru() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         addChild(this.rap);
         addChild(this.pika);
         this.jidesyd();
         return;
      }

      public static const WIDTH:int = 20;

      public static const BEVEL:int = 4;

      public static const pybywy:int = 0;

      private var wynimafih:Qanyduk;

      public function get lonuryc() : Qanyduk {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return this.wynimafih=(this.wynimafih)||(new Qanyduk(Number));
      }

      public const rap:Ruq = new Ruq();

      public const pika:Ditak = new Ditak();

      private var position:Number = 0;

      private var range:int;

      private var celazyd:Number;

      private var isEnabled:Boolean = true;

      public function metybiq() : Boolean {
         return this.isEnabled;
      }

      public function tihuloca(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.isEnabled!=param1)
         {
            this.isEnabled=param1;
            if(param1)
            {
               this.jidesyd();
            }
            else
            {
               this.zeweci();
            }
         }
         return;
      }

      private function jidesyd() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.rap.jidesyd();
         this.rap.peqe.add(this.zuku);
         this.pika.jidesyd();
         this.pika.tojive.add(this.nir);
         return;
      }

      private function zeweci() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.rap.zeweci();
         this.rap.peqe.remove(this.zuku);
         this.pika.zeweci();
         this.pika.tojive.remove(this.nir);
         return;
      }

      public function setSize(param1:int, param2:int) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.pika.rect.height=param1;
         this.rap.rect.height=param2;
         this.range=param2-param1-pybywy*2;
         this.celazyd=1/this.range;
         this.rap.redraw();
         this.pika.redraw();
         this.setPosition(this.fuvo());
         return;
      }

      public function lupy() : int {
         return this.pika.rect.height;
      }

      public function tyn() : int {
         return this.rap.rect.height;
      }

      public function fuvo() : Number {
         return this.position;
      }

      public function setPosition(param1:Number) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1<0)
         {
            param1=0;
         }
         else
         {
            if(param1>1)
            {
               param1=1;
            }
         }
         this.position=param1;
         this.pika.y=pybywy+this.range*this.position;
         return;
      }

      private function nir(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.setPosition((param1-pybywy)*this.celazyd);
         return;
      }

      private function zuku(param1:int) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:int = this.pika.rect.height;
         var _loc3_:int = param1-_loc2_*0.5;
         var _loc4_:int = this.rap.rect.height-_loc2_;
         this.setPosition(_loc3_/_loc4_);
         return;
      }
   }

}