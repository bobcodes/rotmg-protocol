package poho
{
   import __AS3__.vec.Vector;


   public class Wumyziju extends Object
   {
      public function Wumyziju() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private const sybiwu:Vector.<Pom> = new Vector.<Pom>(0);

      private const map:Object = {};

      private var gan:Pom;

      private var pova:Pom;

      private var gimi:int;

      public function bugojopin() : int {
         return this.sybiwu.length;
      }

      public function syret() : Pom {
         return this.gan;
      }

      public function bahalelaf() : Pom {
         return this.pova;
      }

      public function toku(param1:int) : Pom {
         return this.sybiwu[param1];
      }

      public function ruricoke(param1:Pom, param2:Boolean=false) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         param1.fow.add(this.gurenis);
         this.sybiwu.push(param1);
         this.map[param1.id]=param1;
         this.fabonoroq(param1);
         if(param2)
         {
            this.gan=param1;
            if(!this.pova)
            {
               this.pova=param1;
               param1.gowek(true);
            }
         }
         else
         {
            if(param1.cosupeso())
            {
               this.pova=param1;
            }
         }
         return;
      }

      private function gurenis(param1:Pom) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if((param1.cosupeso())&&!(this.pova==param1))
         {
            this.pova=param1;
         }
         return;
      }

      public function vijyqyse(param1:int) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:Pom = null;
         this.gimi=param1;
         for each (_loc2_ in this.sybiwu)
         {
            this.fabonoroq(_loc2_);
         }
         return;
      }

      private function fabonoroq(param1:Pom) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1.dukat().doli())
         {
            param1.setState(this.norususiz(param1));
         }
         return;
      }

      private function norususiz(param1:Pom) : Bul {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.gimi>=param1.unlockLevel)
         {
            return Bul.PURCHASABLE;
         }
         return Bul.LOCKED;
      }

      public function vobydozid(param1:int) : Pom {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return (this.map[param1])||(this.gan);
      }

      public function gywemih() : Vector.<Pom> {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Pom = null;
         var _loc1_:Vector.<Pom> = new Vector.<Pom>();
         for each (_loc2_ in this.sybiwu)
         {
            if(_loc2_.dukat()!=Bul.UNLISTED)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
   }

}