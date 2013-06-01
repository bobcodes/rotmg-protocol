package vacosu
{
[CLASS1818]   import totuhare.AppendingLineBuilder;
   import haqakel.Kefyfa;
   import pigeguwo.Hug;


   public class Byhusi extends Tohu
   {
      public function Byhusi() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private var wofew:XML;

      private var duwiri:XML;

      private var naga:XML;

      private var nehizavoh:XML;

      override protected function compareSlots(param1:XML, param2:XML) : void {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var tag:XML = null;
         var itemXML:XML = param1;
         var curItemXML:XML = param2;
         lupizavyc=new AppendingLineBuilder();
         this.wofew=this.witeq(itemXML,"Healing");
         this.duwiri=this.witeq(itemXML,"Damaging");
         this.naga=this.witeq(curItemXML,"Healing");
         this.nehizavoh=this.witeq(curItemXML,"Damaging");
         if(this.hajofuky())
         {
            this.duheqewim();
            this.kususat();
            if(itemXML.@id=="Seal of Blasphemous Prayer")
            {
               for each (_loc8_ in itemXML.Activate)
               {
                  with(_loc8_)
                  {
                     
                     if(text()=="ConditionEffectSelf")
                     {
                        _loc4_[_loc5_]=_loc7_;
                     }
                  }
               }
               tag=_loc4_[0];
               lupizavyc.pushParams(Kefyfa.jocywob,{effect:""});
               lupizavyc.pushParams(Kefyfa.dyguzer,
                  {
                     effect:Kefyfa.zori(Kefyfa.fuhusu),
                     duration:tag.@duration
                  }
               ,Hug.fyzep(bujypude),Hug.pijef());
               vase[tag.toXMLString()]=true;
            }
         }
         return;
      }

      private function hajofuky() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return !(this.wofew==null)&&!(this.duwiri==null)&&!(this.naga==null)&&!(this.nehizavoh==null);
      }

      private function witeq(param1:XML, param2:String) : XML {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var matches:XMLList = null;
         var tag:XML = null;
         var xml:XML = param1;
         var effectName:String = param2;
         for each (_loc8_ in xml.Activate)
         {
            with(_loc8_)
            {
               
               if(text()=="ConditionEffectAura")
               {
                  _loc4_[_loc5_]=_loc7_;
               }
            }
         }
         matches=_loc4_;
         for each (tag in matches)
         {
            if(tag.@effect==effectName)
            {
               return tag;
            }
         }
         return null;
      }

      private function duheqewim() : void {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var _loc1_:int = int(this.wofew.@duration);
         var _loc2_:int = int(this.naga.@duration);
         var _loc3_:Number = Number(this.wofew.@range);
         var _loc4_:Number = Number(this.naga.@range);
         var _loc5_:Number = 0.5*_loc1_*0.5*_loc3_;
         var _loc6_:Number = 0.5*_loc2_*0.5*_loc4_;
         var _loc7_:uint = conehody(_loc5_-_loc6_);
         var _loc8_:AppendingLineBuilder = new AppendingLineBuilder();
         _loc8_.pushParams(Kefyfa.vejyseb,{range:this.wofew.@range},Hug.fyzep(_loc7_),Hug.pijef());
         _loc8_.pushParams(Kefyfa.dyguzer,
            {
               effect:Kefyfa.zori(Kefyfa.cofa),
               duration:_loc1_.toString()
            }
         ,Hug.fyzep(_loc7_),Hug.pijef());
         lupizavyc.pushParams(Kefyfa.zod,{effect:_loc8_});
         vase[this.wofew.toXMLString()]=true;
         return;
      }

      private function kususat() : void {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var _loc1_:int = int(this.duwiri.@duration);
         var _loc2_:int = int(this.nehizavoh.@duration);
         var _loc3_:Number = Number(this.duwiri.@range);
         var _loc4_:Number = Number(this.nehizavoh.@range);
         var _loc5_:Number = 0.5*_loc1_*0.5*_loc3_;
         var _loc6_:Number = 0.5*_loc2_*0.5*_loc4_;
         var _loc7_:uint = conehody(_loc5_-_loc6_);
         var _loc8_:AppendingLineBuilder = new AppendingLineBuilder();
         _loc8_.pushParams(Kefyfa.vejyseb,{range:this.duwiri.@range},Hug.fyzep(_loc7_),Hug.pijef());
         _loc8_.pushParams(Kefyfa.dyguzer,
            {
               effect:Kefyfa.zori(Kefyfa.razi),
               duration:_loc1_.toString()
            }
         ,Hug.fyzep(_loc7_),Hug.pijef());
         lupizavyc.pushParams(Kefyfa.zod,{effect:_loc8_});
         vase[this.duwiri.toXMLString()]=true;
         return;
      }
   }
[/CLASS]
}