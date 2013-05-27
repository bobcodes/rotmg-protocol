package bisok
{
   import zoroc.Gecezyw;
   import com.company.assembleegameclient.game.Nukomesih;
   import com.company.assembleegameclient.objects.Pet;
   import __AS3__.vec.Vector;
   import cypujavop.StatData;
   import zoroc.Vugusyqik;
   import zoroc.Bezuco;


   public class Qipa extends Object
   {
      public function Qipa() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var duqa:Gecezyw;

      public var qizys:Nukomesih;

      public function wewikabu(param1:Pet, param2:Vector.<StatData>) : void {
         var _loc10_:* = false;
         var _loc11_:* = true;
         var _loc4_:StatData = null;
         var _loc5_:Vugusyqik = null;
         var _loc6_:* = undefined;
         var _loc3_:Bezuco = (param1.qocuseho)||(this.tanocorov(param1,param2));
         if(_loc3_==null)
         {
            return;
         }
         for each (_loc4_ in param2)
         {
            _loc6_=_loc4_.tiz;
            if(_loc4_.masazulu==StatData.dosikusy)
            {
               _loc3_.zepipy(_loc6_);
            }
            switch(_loc4_.masazulu)
            {
               case StatData.noz:
                  _loc3_.setID(_loc6_);
                  break;
               case StatData.wacapym:
                  _loc3_.setName(_loc4_.fiposyk);
                  break;
               case StatData.zupuwikyv:
                  _loc3_.setType(_loc6_);
                  break;
               case StatData.sewurivoc:
                  _loc3_.hazivar(_loc6_);
                  break;
               case StatData.cityqew:
                  _loc3_.newe(_loc6_);
                  break;
               case StatData.madihyqen:
                  break;
               case StatData.purefiki:
                  _loc5_=_loc3_.voqy[0];
                  _loc5_.points=_loc6_;
                  break;
               case StatData.nybofeb:
                  _loc5_=_loc3_.voqy[1];
                  _loc5_.points=_loc6_;
                  break;
               case StatData.qiregezy:
                  _loc5_=_loc3_.voqy[2];
                  _loc5_.points=_loc6_;
                  break;
               case StatData.zegizo:
                  _loc5_=_loc3_.voqy[0];
                  _loc5_.level=_loc6_;
                  break;
               case StatData.pona:
                  _loc5_=_loc3_.voqy[1];
                  _loc5_.level=_loc6_;
                  break;
               case StatData.nini:
                  _loc5_=_loc3_.voqy[2];
                  _loc5_.level=_loc6_;
                  break;
               case StatData.ceqara:
                  _loc5_=_loc3_.voqy[0];
                  _loc5_.type=_loc6_;
                  break;
               case StatData.facyle:
                  _loc5_=_loc3_.voqy[1];
                  _loc5_.type=_loc6_;
                  break;
               case StatData.nakeh:
                  _loc5_=_loc3_.voqy[2];
                  _loc5_.type=_loc6_;
                  break;
            }
            if(_loc5_)
            {
               _loc5_.tygyfizop.dispatch(_loc5_);
            }
         }
         return;
      }

      private function tanocorov(param1:Pet, param2:Vector.<StatData>) : Bezuco {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc3_:StatData = null;
         var _loc4_:Bezuco = null;
         for each (_loc3_ in param2)
         {
            if(_loc3_.masazulu==StatData.noz)
            {
               _loc4_=this.duqa.hygufisu(_loc3_.tiz);
               param1.qocuseho=_loc4_?_loc4_:this.duqa.quciqypoz(this.qizys.map)?this.duqa.getPetVO(_loc3_.tiz):new Bezuco(_loc3_.tiz);
               return param1.qocuseho;
            }
         }
         return null;
      }

      public function qemi(param1:Pet, param2:Vector.<StatData>) : void {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc3_:StatData = null;
         var _loc4_:* = undefined;
         for each (_loc3_ in param2)
         {
            _loc4_=_loc3_.tiz;
            if(_loc3_.masazulu==StatData.dosikusy)
            {
               param1.zepipy(_loc4_);
            }
            if(_loc3_.masazulu==StatData.dok)
            {
               param1.size_=_loc4_;
            }
         }
         return;
      }
   }

}