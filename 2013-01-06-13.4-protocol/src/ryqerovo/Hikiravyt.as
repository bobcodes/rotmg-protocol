package ryqerovo
{
[CLASS1019]   import wufyba.Cobyjowek;
   import suzu.Ved;
   import flash.utils.Dictionary;
   import wufyba.Tyz;
   import wufyba.Pyluwej;
   import fimikibeg.Gozolus;
   import fimikibeg.Moceqo;
   import doganovide.Nasurof;
   import doganovide.Qyz;
   import flash.display.DisplayObject;


   public class Hikiravyt extends Object implements Cobyjowek, Ved
   {
      public function Hikiravyt(param1:Pyluwej, param2:Tyz=null) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super();
         this._factory=param1;
         this._handler=(param2)||(new Nyjuqafe(this._factory));
         return;
      }

      private const dumorin:Dictionary = new Dictionary();

      private var _handler:Tyz;

      private var _factory:Pyluwej;

      private const vidycos:Gozolus = new Lymanu();

      public function matejefu(param1:Nasurof) : Moceqo {
         return this.dumorin[param1.gosipavi().qoza]=(this.dumorin[param1.gosipavi().qoza])||(this.lyj(param1));
      }

      public function map(param1:Class) : Moceqo {
         var _loc2_:Nasurof = new Qyz().allOf(param1);
         return this.matejefu(_loc2_);
      }

      public function piwuh(param1:Nasurof) : Gozolus {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return (this.dumorin[param1.gosipavi().qoza])||(this.vidycos);
      }

      public function gihacas(param1:Class) : Gozolus {
         var _loc2_:Nasurof = new Qyz().allOf(param1);
         return this.piwuh(_loc2_);
      }

      public function tadylugi(param1:DisplayObject, param2:Class) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this._handler.tadylugi(param1,param2);
         return;
      }

      public function qiveha(param1:Object) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Class = param1.constructor as Class;
         this._handler.hejapih(param1,_loc2_);
         return;
      }

      public function moqyjec(param1:Object) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this._factory.vin(param1);
         return;
      }

      private function lyj(param1:Nasurof, param2:Class=null) : Moceqo {
         return new Cipe(param1.gosipavi(),this._handler);
      }
   }
[/CLASS]
}