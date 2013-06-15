package holije
{
   import dyca.Mes;
   import flash.utils.Dictionary;
   import dyca.Sybe;
   import flash.utils.getQualifiedClassName;
   import vibajiku.SsInternal;
   import bud.Rekify;
   import bud.Wil;


   public class Lynyg extends Object implements Garyfajij
   {
      public function Lynyg(param1:Class, param2:Mes) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super();
         this.qepyjifed=param1;
         this.dym=param2;
         return;
      }

      private var qepyjifed:Class;

      private var dym:Mes;

      private var tukugi:Object;

      private var vusyl:Boolean;

      public function apply(param1:Class, param2:Mes, param3:Dictionary) : Object {
         var _loc5_:* = false;
         var _loc6_:* = true;
         return this.tukugi=(this.tukugi)||(this.rijoruzu(this.dym));
      }

      private function rijoruzu(param1:Mes) : Object {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(this.vusyl)
         {
            throw new Sybe("Forbidden usage of unmapped singleton provider for type "+getQualifiedClassName(this.qepyjifed));
         }
         else
         {
            return param1.SsInternal::sagovicot(this.qepyjifed);
         }
      }

      public function destroy() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.vusyl=true;
         if(!this.tukugi)
         {
            return;
         }
         var _loc1_:Rekify = this.dym.pykabeba(this.qepyjifed);
         var _loc2_:Wil = _loc1_.doti;
         while(_loc2_)
         {
            _loc2_.applyInjection(this.tukugi,this.qepyjifed,this.dym);
            _loc2_=Wil(_loc2_.next);
         }
         this.tukugi=null;
         return;
      }
   }

}