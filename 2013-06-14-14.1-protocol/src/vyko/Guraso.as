package vyko
{
   import teqafajoc.Bytezohi;
   import flash.utils.Dictionary;
   import dyca.Mes;
   import flash.events.IEventDispatcher;
   import qypajun.Gahufuz;
   import fol.Qywokida;
   import qypajun.Byjytydon;
   import fol.Fec;


   public class Guraso extends Object implements Bytezohi
   {
      public function Guraso(param1:Mes, param2:IEventDispatcher, param3:Gahufuz) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         super();
         this.vybility=param1;
         this.jepyqibip=param2;
         this.docijody=param3;
         return;
      }

      private const nysemyqu:Dictionary = new Dictionary();

      private var vybility:Mes;

      private var jepyqibip:IEventDispatcher;

      private var docijody:Gahufuz;

      public function map(param1:String, param2:Class=null) : Qywokida {
         var _loc3_:Byjytydon = this.nysemyqu[param1+param2]=(this.nysemyqu[param1+param2])||(this.qod(param1,param2));
         return this.docijody.map(_loc3_);
      }

      public function ricelira(param1:String, param2:Class=null) : Fec {
         return this.docijody.ricelira(this.cebikuviw(param1,param2));
      }

      private function qod(param1:String, param2:Class=null) : Byjytydon {
         return new Kebumow(this.vybility,this.jepyqibip,param1,param2);
      }

      private function cebikuviw(param1:String, param2:Class=null) : Byjytydon {
         return this.nysemyqu[param1+param2];
      }
   }

}