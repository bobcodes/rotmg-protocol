package ducojoryn
{
   import fanij.Namejaja;
   import com.company.assembleegameclient.game.Pajemiz;
   import com.company.assembleegameclient.objects.Pet;
   import __AS3__.vec.Vector;
   import aaa.StatData;
   import fanij.Kyruha;
   import fanij.Cun;


   public class Jegaduje extends Object
   {
      public function Jegaduje() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var cybeco:Namejaja;

      public var qyhowo:Pajemiz;

      public function hyfepubes(param1:Pet, param2:Vector.<StatData>) : void {
         var _loc10_:* = true;
         var _loc11_:* = false;
         var _loc4_:StatData = null;
         var _loc5_:Kyruha = null;
         var _loc6_:* = undefined;
         var _loc3_:Cun = (param1.tutobasu)||(this.cuqedah(param1,param2));
         if(_loc3_==null)
         {
            return;
         }
         for each (_loc4_ in param2)
         {
            _loc6_=_loc4_.cip;
            if(_loc4_.wyp==StatData.vaqivapim)
            {
               _loc3_.qymido(_loc6_);
            }
            switch(_loc4_.wyp)
            {
               case StatData.notowupi:
                  _loc3_.setID(_loc6_);
                  break;
               case StatData.fiwipyd:
                  _loc3_.setName(_loc4_.hune);
                  break;
               case StatData.fubitotuc:
                  _loc3_.setType(_loc6_);
                  break;
               case StatData.tyfevan:
                  _loc3_.nesepi(_loc6_);
                  break;
               case StatData.monopupaq:
                  _loc3_.noqipo(_loc6_);
                  break;
               case StatData.dyjymaruk:
                  break;
               case StatData.sepej:
                  _loc5_=_loc3_.supufo[0];
                  _loc5_.points=_loc6_;
                  break;
               case StatData.bukyv:
                  _loc5_=_loc3_.supufo[1];
                  _loc5_.points=_loc6_;
                  break;
               case StatData.gyqyheqo:
                  _loc5_=_loc3_.supufo[2];
                  _loc5_.points=_loc6_;
                  break;
               case StatData.fucur:
                  _loc5_=_loc3_.supufo[0];
                  _loc5_.level=_loc6_;
                  break;
               case StatData.nahuvocov:
                  _loc5_=_loc3_.supufo[1];
                  _loc5_.level=_loc6_;
                  break;
               case StatData.topu:
                  _loc5_=_loc3_.supufo[2];
                  _loc5_.level=_loc6_;
                  break;
               case StatData.nazes:
                  _loc5_=_loc3_.supufo[0];
                  _loc5_.type=_loc6_;
                  break;
               case StatData.qytu:
                  _loc5_=_loc3_.supufo[1];
                  _loc5_.type=_loc6_;
                  break;
               case StatData.kahy:
                  _loc5_=_loc3_.supufo[2];
                  _loc5_.type=_loc6_;
                  break;
            }
            if(_loc5_)
            {
               _loc5_.nuzum.dispatch(_loc5_);
            }
         }
         return;
      }

      private function cuqedah(param1:Pet, param2:Vector.<StatData>) : Cun {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc3_:StatData = null;
         var _loc4_:Cun = null;
         for each (_loc3_ in param2)
         {
            if(_loc3_.wyp==StatData.notowupi)
            {
               _loc4_=this.cybeco.kahenovoq(_loc3_.cip);
               param1.tutobasu=_loc4_?_loc4_:this.cybeco.wasycekeh(this.qyhowo.map)?this.cybeco.getPetVO(_loc3_.cip):new Cun(_loc3_.cip);
               return param1.tutobasu;
            }
         }
         return null;
      }

      public function vybudyh(param1:Pet, param2:Vector.<StatData>) : void {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc3_:StatData = null;
         var _loc4_:* = undefined;
         for each (_loc3_ in param2)
         {
            _loc4_=_loc3_.cip;
            if(_loc3_.wyp==StatData.vaqivapim)
            {
               param1.qymido(_loc4_);
            }
            if(_loc3_.wyp==StatData.kyg)
            {
               param1.size_=_loc4_;
            }
         }
         return;
      }
   }

}