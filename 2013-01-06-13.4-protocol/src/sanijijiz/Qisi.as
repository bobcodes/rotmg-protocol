package sanijijiz
{
[CLASS1525]   import qypupet.Tuhyfutos;
   import com.company.assembleegameclient.game.Tosahafu;
   import com.company.assembleegameclient.objects.Pet;
   import __AS3__.vec.Vector;
   import jyz.StatData;
   import qypupet.Zazeseca;
   import qypupet.Vuravipyg;


   public class Qisi extends Object
   {
      public function Qisi() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var lycufasoc:Tuhyfutos;

      public var palaliz:Tosahafu;

      public function gybof(param1:Pet, param2:Vector.<StatData>) : void {
         var _loc10_:* = false;
         var _loc11_:* = true;
         var _loc4_:StatData = null;
         var _loc5_:Zazeseca = null;
         var _loc6_:* = undefined;
         var _loc3_:Vuravipyg = (param1.wakutehe)||(this.duranimyc(param1,param2));
         if(_loc3_==null)
         {
            return;
         }
         for each (_loc4_ in param2)
         {
            _loc6_=_loc4_.zuj;
            if(_loc4_.pocujotaz==StatData.kalawu)
            {
               _loc3_.rug(_loc6_);
            }
            switch(_loc4_.pocujotaz)
            {
               case StatData.sakipeme:
                  _loc3_.setID(_loc6_);
                  break;
               case StatData.riluc:
                  _loc3_.setName(_loc4_.dijy);
                  break;
               case StatData.zekavewyc:
                  _loc3_.setType(_loc6_);
                  break;
               case StatData.gov:
                  _loc3_.qupit(_loc6_);
                  break;
               case StatData.wyvamo:
                  _loc3_.raty(_loc6_);
                  break;
               case StatData.kugebowoj:
                  break;
               case StatData.zigaluhe:
                  _loc5_=_loc3_.wosyjuzed[0];
                  _loc5_.points=_loc6_;
                  break;
               case StatData.hocig:
                  _loc5_=_loc3_.wosyjuzed[1];
                  _loc5_.points=_loc6_;
                  break;
               case StatData.cawize:
                  _loc5_=_loc3_.wosyjuzed[2];
                  _loc5_.points=_loc6_;
                  break;
               case StatData.wajobyfy:
                  _loc5_=_loc3_.wosyjuzed[0];
                  _loc5_.level=_loc6_;
                  break;
               case StatData.puzoj:
                  _loc5_=_loc3_.wosyjuzed[1];
                  _loc5_.level=_loc6_;
                  break;
               case StatData.jebyma:
                  _loc5_=_loc3_.wosyjuzed[2];
                  _loc5_.level=_loc6_;
                  break;
               case StatData.guje:
                  _loc5_=_loc3_.wosyjuzed[0];
                  _loc5_.type=_loc6_;
                  break;
               case StatData.jogeruf:
                  _loc5_=_loc3_.wosyjuzed[1];
                  _loc5_.type=_loc6_;
                  break;
               case StatData.husyhupan:
                  _loc5_=_loc3_.wosyjuzed[2];
                  _loc5_.type=_loc6_;
                  break;
            }
            if(_loc5_)
            {
               _loc5_.magoraqo.dispatch(_loc5_);
            }
         }
         return;
      }

      private function duranimyc(param1:Pet, param2:Vector.<StatData>) : Vuravipyg {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc3_:StatData = null;
         var _loc4_:Vuravipyg = null;
         for each (_loc3_ in param2)
         {
            if(_loc3_.pocujotaz==StatData.sakipeme)
            {
               _loc4_=this.lycufasoc.jadaj(_loc3_.zuj);
               param1.wakutehe=_loc4_?_loc4_:this.lycufasoc.pagavy(this.palaliz.map)?this.lycufasoc.getPetVO(_loc3_.zuj):new Vuravipyg(_loc3_.zuj);
               return param1.wakutehe;
            }
         }
         return null;
      }

      public function mykuwynok(param1:Pet, param2:Vector.<StatData>) : void {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc3_:StatData = null;
         var _loc4_:* = undefined;
         for each (_loc3_ in param2)
         {
            _loc4_=_loc3_.zuj;
            if(_loc3_.pocujotaz==StatData.kalawu)
            {
               param1.rug(_loc4_);
            }
            if(_loc3_.pocujotaz==StatData.lybamo)
            {
               param1.size_=_loc4_;
            }
         }
         return;
      }
   }
[/CLASS]
}