package sima
{
   import nec.AppendingLineBuilder;


   public class Cupodute extends Mubij
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Cupodute() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         foqub=new AppendingLineBuilder();
         return;
      }

      private static const jizusom:String = "21";

      private var miq:XMLList;

      private var byha:XMLList;

      override protected function compareSlots(param1:XML, param2:XML) : void {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var defense:int = 0;
         var otherDefense:int = 0;
         var itemXML:XML = param1;
         var curItemXML:XML = param2;
         for each (_loc8_ in itemXML.ActivateOnEquip)
         {
            with(_loc8_)
            {
               
               if(@stat==jizusom)
               {
                  _loc4_[_loc5_]=_loc7_;
               }
            }
         }
         this.miq=_loc4_;
         for each (_loc7_ in curItemXML.ActivateOnEquip)
         {
            with(nextValue(_loc5_,_loc6_))
            {
               
               if(@stat==jizusom)
               {
                  _loc4_[_loc5_]=_loc7_;
               }
            }
         }
         this.byha=_loc4_;
         if(this.miq.length()==1&&this.byha.length()==1)
         {
            defense=int(this.miq.@amount);
            otherDefense=int(this.byha.@amount);
         }
         return;
      }

      private function wibe(param1:int, param2:int) : String {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:uint = gynuha(param1-param2);
         return zerefuhen("+"+param1+" Defense",_loc3_);
      }
   }

}