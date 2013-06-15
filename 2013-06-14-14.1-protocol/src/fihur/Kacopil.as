package fihur
{
   import jediwip.AppendingLineBuilder;
   import komi.Vibemod;
   import mavew.Taz;


   public class Kacopil extends Qudicy
   {
      public function Kacopil() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private var tehoj:XML;

      private var betydyzy:XML;

      private var myc:XML;

      private var kotanefo:XML;

      override protected function compareSlots(param1:XML, param2:XML) : void {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var tag:XML = null;
         var itemXML:XML = param1;
         var curItemXML:XML = param2;
         bycavima=new AppendingLineBuilder();
         this.tehoj=this.rilaruj(itemXML,"Healing");
         this.betydyzy=this.rilaruj(itemXML,"Damaging");
         this.myc=this.rilaruj(curItemXML,"Healing");
         this.kotanefo=this.rilaruj(curItemXML,"Damaging");
         if(this.qez())
         {
            this.fohuvil();
            this.rodunome();
            if(itemXML.@id=="Seal of Blasphemous Prayer")
            {
               tag=itemXML.Activate.(text()=="ConditionEffectSelf")[0];
               bycavima.pushParams(Vibemod.nenigiw,{effect:""});
               bycavima.pushParams(Vibemod.dykejorug,
                  {
                     effect:Vibemod.girafapu(Vibemod.soficyd),
                     duration:tag.@duration
                  }
               ,Taz.humuhujig(pepovut),Taz.vepiq());
               lor[tag.toXMLString()]=true;
            }
         }
         return;
      }

      private function qez() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return !(this.tehoj==null)&&!(this.betydyzy==null)&&!(this.myc==null)&&!(this.kotanefo==null);
      }

      private function rilaruj(param1:XML, param2:String) : XML {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var matches:XMLList = null;
         var tag:XML = null;
         var xml:XML = param1;
         var effectName:String = param2;
         matches=xml.Activate.(text()=="ConditionEffectAura");
         for each (tag in matches)
         {
            if(tag.@effect==effectName)
            {
               return tag;
            }
         }
         return null;
      }

      private function fohuvil() : void {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var _loc1_:int = int(this.tehoj.@duration);
         var _loc2_:int = int(this.myc.@duration);
         var _loc3_:Number = Number(this.tehoj.@range);
         var _loc4_:Number = Number(this.myc.@range);
         var _loc5_:Number = 0.5*_loc1_*0.5*_loc3_;
         var _loc6_:Number = 0.5*_loc2_*0.5*_loc4_;
         var _loc7_:uint = musybiboj(_loc5_-_loc6_);
         var _loc8_:AppendingLineBuilder = new AppendingLineBuilder();
         _loc8_.pushParams(Vibemod.dotyw,{range:this.tehoj.@range},Taz.humuhujig(_loc7_),Taz.vepiq());
         _loc8_.pushParams(Vibemod.dykejorug,
            {
               effect:Vibemod.girafapu(Vibemod.mehigawin),
               duration:_loc1_.toString()
            }
         ,Taz.humuhujig(_loc7_),Taz.vepiq());
         bycavima.pushParams(Vibemod.zekora,{effect:_loc8_});
         lor[this.tehoj.toXMLString()]=true;
         return;
      }

      private function rodunome() : void {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var _loc1_:int = int(this.betydyzy.@duration);
         var _loc2_:int = int(this.kotanefo.@duration);
         var _loc3_:Number = Number(this.betydyzy.@range);
         var _loc4_:Number = Number(this.kotanefo.@range);
         var _loc5_:Number = 0.5*_loc1_*0.5*_loc3_;
         var _loc6_:Number = 0.5*_loc2_*0.5*_loc4_;
         var _loc7_:uint = musybiboj(_loc5_-_loc6_);
         var _loc8_:AppendingLineBuilder = new AppendingLineBuilder();
         _loc8_.pushParams(Vibemod.dotyw,{range:this.betydyzy.@range},Taz.humuhujig(_loc7_),Taz.vepiq());
         _loc8_.pushParams(Vibemod.dykejorug,
            {
               effect:Vibemod.girafapu(Vibemod.seqehyg),
               duration:_loc1_.toString()
            }
         ,Taz.humuhujig(_loc7_),Taz.vepiq());
         bycavima.pushParams(Vibemod.zekora,{effect:_loc8_});
         lor[this.betydyzy.toXMLString()]=true;
         return;
      }
   }

}