package fihur
{
   import jediwip.AppendingLineBuilder;
   import komi.Vibemod;
   import mavew.Taz;


   public class Huzicyrek extends Qudicy
   {
      public function Huzicyrek() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      override protected function compareSlots(param1:XML, param2:XML) : void {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc3_:XML = null;
         var _loc4_:XML = null;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         _loc3_=this.hipy(param1);
         _loc4_=this.hipy(param2);
         bycavima=new AppendingLineBuilder();
         if(!(_loc3_==null)&&!(_loc4_==null))
         {
            _loc5_=Number(_loc3_.@duration);
            _loc6_=Number(_loc4_.@duration);
            this.bugyne(_loc5_,_loc6_);
            lor[_loc3_.toXMLString()]=true;
         }
         this.vaqyjuby(param1);
         return;
      }

      private function vaqyjuby(param1:XML) : void {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var teleportTag:XML = null;
         var itemXML:XML = param1;
         if(itemXML.@id=="Cloak of the Planewalker")
         {
            bycavima.pushParams(Vibemod.kevoraf,{},Taz.humuhujig(pepovut),Taz.vepiq());
            teleportTag=XML(itemXML.Activate.(text()==Warel.TELEPORT))[0];
            lor[teleportTag.toXMLString()]=true;
         }
         return;
      }

      private function hipy(param1:XML) : XML {
         var _loc10_:* = true;
         var _loc11_:* = false;
         var matches:XMLList = null;
         var conditionTag:XML = null;
         var xml:XML = param1;
         matches=xml.Activate.(text()==Warel.molafub);
         for each (conditionTag in matches)
         {
            for each (_loc9_ in conditionTag)
            {
               with(_loc9_)
               {
                  
                  if(@effect=="Invisible")
                  {
                     _loc5_[_loc6_]=_loc8_;
                  }
               }
            }
            if(_loc5_)
            {
               return conditionTag;
            }
         }
         return null;
      }

      private function bugyne(param1:Number, param2:Number) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:uint = musybiboj(param1-param2);
         bycavima.pushParams(Vibemod.nenigiw,{effect:""});
         bycavima.pushParams(Vibemod.dykejorug,
            {
               effect:Vibemod.girafapu(Vibemod.keg),
               duration:param1.toString()
            }
         ,Taz.humuhujig(_loc3_),Taz.vepiq());
         return;
      }
   }

}