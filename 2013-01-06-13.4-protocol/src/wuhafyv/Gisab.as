package wuhafyv
{
[CLASS1015]   import dogyq.Nyh;
   import flash.utils.Dictionary;
   import pogefeqeh.Wahovy;
   import flash.events.IEventDispatcher;
   import sogi.Gyge;
   import lovika.Sebyp;
   import sogi.Tuwenaq;
   import lovika.Jesuc;


   public class Gisab extends Object implements Nyh
   {
      public function Gisab(param1:Wahovy, param2:IEventDispatcher, param3:Gyge) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         super();
         this.qod=param1;
         this.maw=param2;
         this.koci=param3;
         return;
      }

      private const vac:Dictionary = new Dictionary();

      private var qod:Wahovy;

      private var maw:IEventDispatcher;

      private var koci:Gyge;

      public function map(param1:String, param2:Class=null) : Sebyp {
         var _loc3_:Tuwenaq = this.vac[param1+param2]=(this.vac[param1+param2])||(this.desoza(param1,param2));
         return this.koci.map(_loc3_);
      }

      public function gihacas(param1:String, param2:Class=null) : Jesuc {
         return this.koci.gihacas(this.pivoqujoq(param1,param2));
      }

      private function desoza(param1:String, param2:Class=null) : Tuwenaq {
         return new Gunalofa(this.qod,this.maw,param1,param2);
      }

      private function pivoqujoq(param1:String, param2:Class=null) : Tuwenaq {
         return this.vac[param1+param2];
      }
   }
[/CLASS]
}