package com.company.assembleegameclient.objects
{
   import flash.display.BitmapData;
   import sijizoh.Duq;
   import daqun.Qobeta;
   import com.company.assembleegameclient.util.Kebinuhi;
   import com.company.assembleegameclient.appengine.RemoteTexture;
   import com.company.util.AssetLibrary;
   import pufupav.Tajy;
   import com.company.assembleegameclient.util.Hekisona;
   import com.company.assembleegameclient.util.Jiqefatok;
   import flash.utils.Dictionary;


   public class Bedypy extends Sep
   {
      public function Bedypy(param1:XML) {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:XML = null;
         super();
         this.wuqucusal=this.bukucen();
         if(param1.hasOwnProperty("Texture"))
         {
            this.parse(XML(param1.Texture));
         }
         else
         {
            if(param1.hasOwnProperty("AnimatedTexture"))
            {
               this.parse(XML(param1.AnimatedTexture));
            }
            else
            {
               if(param1.hasOwnProperty("RemoteTexture"))
               {
                  this.parse(XML(param1.RemoteTexture));
               }
               else
               {
                  if(param1.hasOwnProperty("RandomTexture"))
                  {
                     this.parse(XML(param1.RandomTexture));
                  }
                  else
                  {
                     this.parse(param1);
                  }
               }
            }
         }
         for each (_loc2_ in param1.AltTexture)
         {
            this.parse(_loc2_);
         }
         if(param1.hasOwnProperty("Mask"))
         {
            this.parse(XML(param1.Mask));
         }
         if(param1.hasOwnProperty("Effect"))
         {
            this.parse(XML(param1.Effect));
         }
         return;
      }

      private var wuqucusal:Boolean;

      override public function getTexture(param1:int=0) : BitmapData {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(diqatocos==null)
         {
            return texture_;
         }
         var _loc2_:Sep = diqatocos[param1%diqatocos.length];
         return _loc2_.getTexture(param1);
      }

      override public function getAltTextureData(param1:int) : Sep {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(cybowe==null)
         {
            return null;
         }
         return cybowe[param1];
      }

      private function bukucen() : Boolean {
         var _loc1_:Qobeta = Duq.pamazo().getInstance(Qobeta);
         return _loc1_.cupyryl();
      }

      private function parse(param1:XML) : void {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc2_:Kebinuhi = null;
         var _loc3_:RemoteTexture = null;
         var _loc4_:XML = null;
         switch(null)
         {
            case "Texture":
               texture_=AssetLibrary.tem(String(param1.File),int(param1.Index));
               break;
            case "Mask":
               mask_=AssetLibrary.tem(String(param1.File),int(param1.Index));
               break;
            case "Effect":
               pyzusod=new Tajy(param1);
               break;
            case "AnimatedTexture":
               bisyfewyt=Hekisona.woseku(String(param1.File),int(param1.Index));
               _loc2_=bisyfewyt.imageFromAngle(0,Jiqefatok.radev,0);
               texture_=_loc2_.image_;
               mask_=_loc2_.mask_;
               break;
            case "RemoteTexture":
               texture_=AssetLibrary.tem("lofiObj3",255);
               if(this.wuqucusal)
               {
                  _loc3_=new RemoteTexture(param1.Id,param1.Instance,this.tamalinan);
                  _loc3_.run();
               }
               nugofus=param1.hasOwnProperty("Right")?Jiqefatok.RIGHT:Jiqefatok.DOWN;
               break;
            case "RandomTexture":
               diqatocos=new Vector.<Sep>();
               for each (_loc4_ in param1.children())
               {
                  diqatocos.push(new Bedypy(_loc4_));
               }
               break;
            case "AltTexture":
               if(cybowe==null)
               {
                  cybowe=new Dictionary();
               }
               cybowe[int(param1.@id)]=new Bedypy(param1);
               break;
         }
         return;
      }

      private function tamalinan(param1:BitmapData) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1.width>16)
         {
            Hekisona.add("remoteTexture",param1,null,param1.width/7,param1.height,param1.width,param1.height,nugofus);
            bisyfewyt=Hekisona.woseku("remoteTexture",0);
            texture_=bisyfewyt.imageFromAngle(0,Jiqefatok.radev,0).image_;
         }
         else
         {
            texture_=param1;
         }
         return;
      }
   }

}