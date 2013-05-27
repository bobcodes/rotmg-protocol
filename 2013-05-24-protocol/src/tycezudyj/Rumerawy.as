package tycezudyj
{
   import geben.Wejy;
   import flash.utils.Dictionary;
   import kyco.Nun;
   import flash.events.IEventDispatcher;
   import laho.Byzyji;
   import cuca.Fon;
   import laho.Lezihej;
   import cuca.Zykitu;


   public class Rumerawy extends Object implements Wejy
   {
      public function Rumerawy(param1:Nun, param2:IEventDispatcher, param3:Byzyji) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         super();
         this.pub=param1;
         this.pidehyt=param2;
         this.mizohi=param3;
         return;
      }

      private const cuhutywo:Dictionary = new Dictionary();

      private var pub:Nun;

      private var pidehyt:IEventDispatcher;

      private var mizohi:Byzyji;

      public function map(param1:String, param2:Class=null) : Fon {
         var _loc3_:Lezihej = this.cuhutywo[param1+param2]=(this.cuhutywo[param1+param2])||(this.zyfugeduc(param1,param2));
         return this.mizohi.map(_loc3_);
      }

      public function gukin(param1:String, param2:Class=null) : Zykitu {
         return this.mizohi.gukin(this.mut(param1,param2));
      }

      private function zyfugeduc(param1:String, param2:Class=null) : Lezihej {
         return new Pyfyzuw(this.pub,this.pidehyt,param1,param2);
      }

      private function mut(param1:String, param2:Class=null) : Lezihej {
         return this.cuhutywo[param1+param2];
      }
   }

}