package bus
{
[CLASS1336]   import pogefeqeh.Wahovy;
   import flash.utils.Dictionary;
   import pogefeqeh.Duba;
   import flash.utils.getQualifiedClassName;
   import tapago.SsInternal;
   import cukopumin.Sov;
   import cukopumin.Zadibe;


   public class Tabugu extends Object implements Nygeles
   {
      public function Tabugu(param1:Class, param2:Wahovy) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super();
         this.lepyko=param1;
         this.zediqecid=param2;
         return;
      }

      private var lepyko:Class;

      private var zediqecid:Wahovy;

      private var sysihyb:Object;

      private var napicasaf:Boolean;

      public function apply(param1:Class, param2:Wahovy, param3:Dictionary) : Object {
         var _loc5_:* = false;
         var _loc6_:* = true;
         return this.sysihyb=(this.sysihyb)||(this.dibijipyl(this.zediqecid));
      }

      private function dibijipyl(param1:Wahovy) : Object {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(this.napicasaf)
         {
            throw new Duba("Forbidden usage of unmapped singleton provider for type "+getQualifiedClassName(this.lepyko));
         }
         else
         {
            return param1.SsInternal::gin(this.lepyko);
         }
      }

      public function destroy() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.napicasaf=true;
         if(!this.sysihyb)
         {
            return;
         }
         var _loc1_:Sov = this.zediqecid.niqakaq(this.lepyko);
         var _loc2_:Zadibe = _loc1_.dot;
         while(_loc2_)
         {
            _loc2_.applyInjection(this.sysihyb,this.lepyko,this.zediqecid);
            _loc2_=Zadibe(_loc2_.next);
         }
         this.sysihyb=null;
         return;
      }
   }
[/CLASS]
}