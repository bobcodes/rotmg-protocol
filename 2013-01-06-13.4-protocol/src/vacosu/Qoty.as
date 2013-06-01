package vacosu
{
[CLASS1814]   import totuhare.AppendingLineBuilder;
   import haqakel.Kefyfa;
   import pigeguwo.Hug;


   public class Qoty extends Tohu
   {
      public function Qoty() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      override protected function compareSlots(param1:XML, param2:XML) : void {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc3_:XML = null;
         var _loc4_:XML = null;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         _loc3_=this.qavesur(param1);
         _loc4_=this.qavesur(param2);
         lupizavyc=new AppendingLineBuilder();
         if(!(_loc3_==null)&&!(_loc4_==null))
         {
            _loc5_=Number(_loc3_.@duration);
            _loc6_=Number(_loc4_.@duration);
            this.qewukuha(_loc5_,_loc6_);
            vase[_loc3_.toXMLString()]=true;
         }
         this.lysily(param1);
         return;
      }

      private function lysily(param1:XML) : void {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var teleportTag:XML = null;
         var itemXML:XML = param1;
         if(itemXML.@id=="Cloak of the Planewalker")
         {
            lupizavyc.pushParams(Kefyfa.suly,{},Hug.fyzep(bujypude),Hug.pijef());
            for each (_loc7_ in itemXML.Activate)
            {
               with(_loc7_)
               {
                  
                  if(text()==Gywow.TELEPORT)
                  {
                     _loc3_[_loc4_]=_loc6_;
                  }
               }
            }
            teleportTag=XML(_loc3_)[0];
            vase[teleportTag.toXMLString()]=true;
         }
         return;
      }

      private function qavesur(param1:XML) : XML {
         var _loc10_:* = true;
         var _loc11_:* = false;
         var matches:XMLList = null;
         var conditionTag:XML = null;
         var xml:XML = param1;
         for each (_loc7_ in xml.Activate)
         {
            with(_loc7_)
            {
               
               if(text()==Gywow.hyme)
               {
                  _loc3_[_loc4_]=_loc6_;
               }
            }
         }
         matches=_loc3_;
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

      private function qewukuha(param1:Number, param2:Number) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:uint = conehody(param1-param2);
         lupizavyc.pushParams(Kefyfa.jocywob,{effect:""});
         lupizavyc.pushParams(Kefyfa.dyguzer,
            {
               effect:Kefyfa.zori(Kefyfa.bypylijuw),
               duration:param1.toString()
            }
         ,Hug.fyzep(_loc3_),Hug.pijef());
         return;
      }
   }
[/CLASS]
}