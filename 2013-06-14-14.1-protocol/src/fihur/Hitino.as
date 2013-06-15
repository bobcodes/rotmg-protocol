package fihur
{
   import jediwip.AppendingLineBuilder;
   import komi.Vibemod;
   import mavew.Taz;


   public class Hitino extends Qudicy
   {
      public function Hitino() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private var rawinu:XML;

      private var speedy:XML;

      private var vyn:XML;

      private var napinuk:XML;

      private var kyruwuruv:XML;

      private var naqa:XML;

      override protected function compareSlots(param1:XML, param2:XML) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.kojyge(param1,param2);
         bycavima=new AppendingLineBuilder();
         this.wec();
         this.luv();
         this.loripimyz();
         return;
      }

      private function kojyge(param1:XML, param2:XML) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.rawinu=this.danuderiw(param1,"Berserk");
         this.speedy=this.ramobo(param1,"Speedy");
         this.kyruwuruv=this.ramobo(param1,"Armored");
         this.vyn=this.danuderiw(param2,"Berserk");
         this.napinuk=this.ramobo(param2,"Speedy");
         this.naqa=this.ramobo(param2,"Armored");
         return;
      }

      private function danuderiw(param1:XML, param2:String) : XML {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var matches:XMLList = null;
         var tag:XML = null;
         var xml:XML = param1;
         var typeName:String = param2;
         matches=xml.Activate.(text()==Warel.cud);
         for each (tag in matches)
         {
            if(tag.@effect==typeName)
            {
               return tag;
            }
         }
         return null;
      }

      private function ramobo(param1:XML, param2:String) : XML {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var matches:XMLList = null;
         var tag:XML = null;
         var xml:XML = param1;
         var typeName:String = param2;
         matches=xml.Activate.(text()==Warel.molafub);
         for each (tag in matches)
         {
            if(tag.@effect==typeName)
            {
               return tag;
            }
         }
         return null;
      }

      private function wec() : void {
         var _loc9_:* = true;
         var _loc10_:* = false;
         if(this.rawinu==null||this.vyn==null)
         {
            return;
         }
         var _loc1_:Number = Number(this.rawinu.@range);
         var _loc2_:Number = Number(this.vyn.@range);
         var _loc3_:Number = Number(this.rawinu.@duration);
         var _loc4_:Number = Number(this.vyn.@duration);
         var _loc5_:Number = 0.5*_loc1_+0.5*_loc3_;
         var _loc6_:Number = 0.5*_loc2_+0.5*_loc4_;
         var _loc7_:uint = musybiboj(_loc5_-_loc6_);
         var _loc8_:AppendingLineBuilder = new AppendingLineBuilder();
         _loc8_.pushParams(Vibemod.dotyw,{range:_loc1_.toString()},Taz.humuhujig(_loc7_),Taz.vepiq());
         _loc8_.pushParams(Vibemod.dykejorug,
            {
               effect:Vibemod.girafapu(Vibemod.gozoli),
               duration:_loc3_.toString()
            }
         ,Taz.humuhujig(_loc7_),Taz.vepiq());
         bycavima.pushParams(Vibemod.zekora,{effect:_loc8_});
         lor[this.rawinu.toXMLString()]=true;
         return;
      }

      private function luv() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:* = NaN;
         var _loc2_:* = NaN;
         if(!(this.speedy==null)&&!(this.napinuk==null))
         {
            _loc1_=Number(this.speedy.@duration);
            _loc2_=Number(this.napinuk.@duration);
            bycavima.pushParams(Vibemod.nenigiw,{effect:""});
            bycavima.pushParams(Vibemod.dykejorug,
               {
                  effect:Vibemod.girafapu(Vibemod.qymadyzag),
                  duration:_loc1_.toString()
               }
            ,Taz.humuhujig(musybiboj(_loc1_-_loc2_)),Taz.vepiq());
            lor[this.speedy.toXMLString()]=true;
         }
         else
         {
            if(!(this.speedy==null)&&this.napinuk==null)
            {
               bycavima.pushParams(Vibemod.nenigiw,{effect:""});
               bycavima.pushParams(Vibemod.dykejorug,
                  {
                     effect:Vibemod.girafapu(Vibemod.qymadyzag),
                     duration:this.speedy.@duration
                  }
               ,Taz.humuhujig(nulotuf),Taz.vepiq());
               lor[this.speedy.toXMLString()]=true;
            }
         }
         return;
      }

      private function loripimyz() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.kyruwuruv!=null)
         {
            bycavima.pushParams(Vibemod.nenigiw,{effect:""});
            bycavima.pushParams(Vibemod.dykejorug,
               {
                  effect:Vibemod.girafapu(Vibemod.late),
                  duration:this.kyruwuruv.@duration
               }
            ,Taz.humuhujig(pepovut),Taz.vepiq());
            lor[this.kyruwuruv.toXMLString()]=true;
         }
         return;
      }
   }

}