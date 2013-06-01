package vacosu
{
[CLASS1819]   import totuhare.AppendingLineBuilder;


   public class Tatobo extends Tohu
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Tatobo() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         lupizavyc=new AppendingLineBuilder();
         return;
      }

      private static const wit:String = "21";

      private var rinycuc:XMLList;

      private var salubaw:XMLList;

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
               
               if(@stat==wit)
               {
                  _loc4_[_loc5_]=_loc7_;
               }
            }
         }
         this.rinycuc=_loc4_;
         for each (_loc7_ in curItemXML.ActivateOnEquip)
         {
            with(nextValue(_loc5_,_loc6_))
            {
               
               if(@stat==wit)
               {
                  _loc4_[_loc5_]=_loc7_;
               }
            }
         }
         this.salubaw=_loc4_;
         if(this.rinycuc.length()==1&&this.salubaw.length()==1)
         {
            defense=int(this.rinycuc.@amount);
            otherDefense=int(this.salubaw.@amount);
         }
         return;
      }

      private function kysir(param1:int, param2:int) : String {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:uint = conehody(param1-param2);
         return vajaco("+"+param1+" Defense",_loc3_);
      }
   }
[/CLASS]
}