package vacosu
{
[CLASS1812]   import totuhare.AppendingLineBuilder;
   import haqakel.Kefyfa;
   import pigeguwo.Hug;


   public class Covalofac extends Tohu
   {
      public function Covalofac() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private var kucer:XML;

      private var speedy:XML;

      private var fel:XML;

      private var pubom:XML;

      private var fatikig:XML;

      private var kovuje:XML;

      override protected function compareSlots(param1:XML, param2:XML) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.zic(param1,param2);
         lupizavyc=new AppendingLineBuilder();
         this.cokedy();
         this.sajemo();
         this.hebabe();
         return;
      }

      private function zic(param1:XML, param2:XML) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.kucer=this.jacyqut(param1,"Berserk");
         this.speedy=this.vepoko(param1,"Speedy");
         this.fatikig=this.vepoko(param1,"Armored");
         this.fel=this.jacyqut(param2,"Berserk");
         this.pubom=this.vepoko(param2,"Speedy");
         this.kovuje=this.vepoko(param2,"Armored");
         return;
      }

      private function jacyqut(param1:XML, param2:String) : XML {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var matches:XMLList = null;
         var tag:XML = null;
         var xml:XML = param1;
         var typeName:String = param2;
         for each (_loc8_ in xml.Activate)
         {
            with(_loc8_)
            {
               
               if(text()==Gywow.cyrehunyw)
               {
                  _loc4_[_loc5_]=_loc7_;
               }
            }
         }
         matches=_loc4_;
         for each (tag in matches)
         {
            if(tag.@effect==typeName)
            {
               return tag;
            }
         }
         return null;
      }

      private function vepoko(param1:XML, param2:String) : XML {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var matches:XMLList = null;
         var tag:XML = null;
         var xml:XML = param1;
         var typeName:String = param2;
         for each (_loc8_ in xml.Activate)
         {
            with(_loc8_)
            {
               
               if(text()==Gywow.hyme)
               {
                  _loc4_[_loc5_]=_loc7_;
               }
            }
         }
         matches=_loc4_;
         for each (tag in matches)
         {
            if(tag.@effect==typeName)
            {
               return tag;
            }
         }
         return null;
      }

      private function cokedy() : void {
         var _loc9_:* = false;
         var _loc10_:* = true;
         if(this.kucer==null||this.fel==null)
         {
            return;
         }
         var _loc1_:Number = Number(this.kucer.@range);
         var _loc2_:Number = Number(this.fel.@range);
         var _loc3_:Number = Number(this.kucer.@duration);
         var _loc4_:Number = Number(this.fel.@duration);
         var _loc5_:Number = 0.5*_loc1_+0.5*_loc3_;
         var _loc6_:Number = 0.5*_loc2_+0.5*_loc4_;
         var _loc7_:uint = conehody(_loc5_-_loc6_);
         var _loc8_:AppendingLineBuilder = new AppendingLineBuilder();
         _loc8_.pushParams(Kefyfa.vejyseb,{range:_loc1_.toString()},Hug.fyzep(_loc7_),Hug.pijef());
         _loc8_.pushParams(Kefyfa.dyguzer,
            {
               effect:Kefyfa.zori(Kefyfa.jebijuv),
               duration:_loc3_.toString()
            }
         ,Hug.fyzep(_loc7_),Hug.pijef());
         lupizavyc.pushParams(Kefyfa.zod,{effect:_loc8_});
         vase[this.kucer.toXMLString()]=true;
         return;
      }

      private function sajemo() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:* = NaN;
         var _loc2_:* = NaN;
         if(!(this.speedy==null)&&!(this.pubom==null))
         {
            _loc1_=Number(this.speedy.@duration);
            _loc2_=Number(this.pubom.@duration);
            lupizavyc.pushParams(Kefyfa.jocywob,{effect:""});
            lupizavyc.pushParams(Kefyfa.dyguzer,
               {
                  effect:Kefyfa.zori(Kefyfa.qif),
                  duration:_loc1_.toString()
               }
            ,Hug.fyzep(conehody(_loc1_-_loc2_)),Hug.pijef());
            vase[this.speedy.toXMLString()]=true;
         }
         else
         {
            if(!(this.speedy==null)&&this.pubom==null)
            {
               lupizavyc.pushParams(Kefyfa.jocywob,{effect:""});
               lupizavyc.pushParams(Kefyfa.dyguzer,
                  {
                     effect:Kefyfa.zori(Kefyfa.qif),
                     duration:this.speedy.@duration
                  }
               ,Hug.fyzep(jujuhiq),Hug.pijef());
               vase[this.speedy.toXMLString()]=true;
            }
         }
         return;
      }

      private function hebabe() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.fatikig!=null)
         {
            lupizavyc.pushParams(Kefyfa.jocywob,{effect:""});
            lupizavyc.pushParams(Kefyfa.dyguzer,
               {
                  effect:Kefyfa.zori(Kefyfa.dat),
                  duration:this.fatikig.@duration
               }
            ,Hug.fyzep(bujypude),Hug.pijef());
            vase[this.fatikig.toXMLString()]=true;
         }
         return;
      }
   }
[/CLASS]
}