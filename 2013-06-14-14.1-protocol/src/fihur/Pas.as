package fihur
{
   import jediwip.AppendingLineBuilder;
   import komi.Vibemod;
   import jediwip.Kybidu;
   import mavew.Taz;


   public class Pas extends Qudicy
   {
      public function Pas() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private var decoy:XMLList;

      private var hediv:XMLList;

      override protected function compareSlots(param1:XML, param2:XML) : void {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var duration:Number = NaN;
         var otherDuration:Number = NaN;
         var textColor:uint = 0;
         var test:String = null;
         var itemXML:XML = param1;
         var curItemXML:XML = param2;
         this.decoy=itemXML.Activate.(text()=="Decoy");
         for each (_loc7_ in curItemXML.Activate)
         {
            with(nextValue(_loc5_,_loc6_))
            {
               
               if(text()=="Decoy")
               {
                  _loc4_[_loc5_]=_loc7_;
               }
            }
         }
         this.hediv=_loc4_;
         bycavima=new AppendingLineBuilder();
         if(this.decoy.length()==1&&this.hediv.length()==1)
         {
            duration=Number(this.decoy[0].@duration);
            otherDuration=Number(this.hediv[0].@duration);
            textColor=musybiboj(duration-otherDuration);
            bycavima.pushParams(Vibemod.sasime,{data:new Kybidu().setParams(Vibemod.mewafaw,{duration:duration.toString()}).setPrefix(Taz.humuhujig(textColor)).setPostfix(Taz.vepiq())});
            test=this.decoy[0].toXMLString();
            lor[this.decoy[0].toXMLString()]=true;
         }
         return;
      }
   }

}