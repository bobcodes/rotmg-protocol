package fihur
{
   import jediwip.AppendingLineBuilder;


   public class Pinygy extends Qudicy
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Pinygy() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         bycavima=new AppendingLineBuilder();
         return;
      }

      private static const pomobudi:String = "21";

      private var voco:XMLList;

      private var dez:XMLList;

      override protected function compareSlots(param1:XML, param2:XML) : void {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var defense:int = 0;
         var otherDefense:int = 0;
         var itemXML:XML = param1;
         var curItemXML:XML = param2;
         this.voco=itemXML.ActivateOnEquip.(@stat==pomobudi);
         for each (_loc7_ in curItemXML.ActivateOnEquip)
         {
            with(nextValue(_loc5_,_loc6_))
            {
               
               if(@stat==pomobudi)
               {
                  _loc4_[_loc5_]=_loc7_;
               }
            }
         }
         this.dez=_loc4_;
         if(this.voco.length()==1&&this.dez.length()==1)
         {
            defense=int(this.voco.@amount);
            otherDefense=int(this.dez.@amount);
         }
         return;
      }

      private function rygacyji(param1:int, param2:int) : String {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:uint = musybiboj(param1-param2);
         return wafifib("+"+param1+" Defense",_loc3_);
      }
   }

}