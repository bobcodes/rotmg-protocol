package vacosu
{
[CLASS1810]   import totuhare.AppendingLineBuilder;
   import haqakel.Kefyfa;
   import totuhare.Zufi;
   import pigeguwo.Hug;


   public class Wyz extends Tohu
   {
      public function Wyz() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      override protected function compareSlots(param1:XML, param2:XML) : void {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc3_:XML = null;
         var _loc4_:XML = null;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:uint = 0;
         _loc3_=this.hocoh(param1);
         _loc4_=this.hocoh(param2);
         lupizavyc=new AppendingLineBuilder();
         if(!(_loc3_==null)&&!(_loc4_==null))
         {
            _loc5_=int(_loc3_.@duration);
            _loc6_=int(_loc4_.@duration);
            _loc7_=conehody(_loc5_-_loc6_);
            lupizavyc.pushParams(Kefyfa.lehitaso,{stasis:new Zufi().setParams(Kefyfa.jygalyji,{duration:_loc5_}).setPrefix(Hug.fyzep(_loc7_)).setPostfix(Hug.pijef())});
            vase[_loc3_.toXMLString()]=true;
            this.lysily(param1);
         }
         return;
      }

      private function hocoh(param1:XML) : XML {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var matches:XMLList = null;
         var orbXML:XML = param1;
         for each (_loc7_ in orbXML.Activate)
         {
            with(_loc7_)
            {
               
               if(text()=="StasisBlast")
               {
                  _loc3_[_loc4_]=_loc6_;
               }
            }
         }
         matches=_loc3_;
         return matches.length()==1?matches[0]:null;
      }

      private function lysily(param1:XML) : void {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var selfTags:XMLList = null;
         var speedy:XML = null;
         var damaging:XML = null;
         var itemXML:XML = param1;
         if(itemXML.@id=="Orb of Conflict")
         {
            for each (_loc7_ in itemXML.Activate)
            {
               with(_loc7_)
               {
                  
                  if(text()=="ConditionEffectSelf")
                  {
                     _loc3_[_loc4_]=_loc6_;
                  }
               }
            }
            selfTags=_loc3_;
            for each (_loc6_ in selfTags)
            {
               with(nextValue(_loc4_,_loc5_))
               {
                  
                  if(@effect=="Speedy")
                  {
                     _loc3_[_loc4_]=_loc6_;
                  }
               }
            }
            speedy=_loc3_[0];
            for each (_loc6_ in selfTags)
            {
               with(nextValue(_loc4_,_loc5_))
               {
                  
                  if(@effect=="Damaging")
                  {
                     _loc3_[_loc4_]=_loc6_;
                  }
               }
            }
            damaging=_loc3_[0];
            lupizavyc.pushParams(Kefyfa.jocywob,{effect:""});
            lupizavyc.pushParams(Kefyfa.dyguzer,
               {
                  effect:Kefyfa.zori(Kefyfa.qif),
                  duration:speedy.@duration
               }
            ,Hug.fyzep(bujypude),Hug.pijef());
            lupizavyc.pushParams(Kefyfa.jocywob,{effect:""});
            lupizavyc.pushParams(Kefyfa.dyguzer,
               {
                  effect:Kefyfa.zori(Kefyfa.razi),
                  duration:damaging.@duration
               }
            ,Hug.fyzep(bujypude),Hug.pijef());
            vase[speedy.toXMLString()]=true;
            vase[damaging.toXMLString()]=true;
         }
         return;
      }
   }
[/CLASS]
}