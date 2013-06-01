package fyrida
{
[CLASS202]   import zajenevik.Tif;
   import flash.utils.Dictionary;
   import pogefeqeh.Wahovy;
   import sogi.Gyge;
   import lovika.Sebyp;
   import sogi.Tuwenaq;
   import lovika.Jesuc;


   public class Rym extends Object implements Tif
   {
      public function Rym(param1:Wahovy, param2:Gyge) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super();
         this.qod=param1;
         this.pewaheto=param2;
         return;
      }

      private const juvevydef:Dictionary = new Dictionary();

      private var qod:Wahovy;

      private var pewaheto:Gyge;

      public function map(param1:Class, param2:Boolean=false) : Sebyp {
         var _loc3_:Tuwenaq = this.juvevydef[param1]=(this.juvevydef[param1])||(this.rucyvirub(param1,param2));
         return this.pewaheto.map(_loc3_);
      }

      public function gihacas(param1:Class) : Jesuc {
         return this.pewaheto.gihacas(this.wofamif(param1));
      }

      private function rucyvirub(param1:Class, param2:Boolean=false) : Tuwenaq {
         return new Vepetus(this.qod,param1,param2);
      }

      private function wofamif(param1:Class) : Tuwenaq {
         return this.juvevydef[param1];
      }
   }
[/CLASS]
}