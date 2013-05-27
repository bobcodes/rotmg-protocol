package com.company.assembleegameclient.objects
{
   import flash.display.BitmapData;
   import jag.Giq;
   import cucowury.Vylasy;
   import com.company.assembleegameclient.util.Biloqu;
   import com.company.assembleegameclient.appengine.RemoteTexture;
   import com.company.util.AssetLibrary;
   import moryzis.Baly;
   import com.company.assembleegameclient.util.Jutot;
   import com.company.assembleegameclient.util.Zuwomuguk;
   import flash.utils.Dictionary;


   public class Jerakupej extends Sirador
   {
      public function Jerakupej(param1:XML) {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:XML = null;
         super();
         this.wywaf=this.kalacyfir();
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

      private var wywaf:Boolean;

      override public function getTexture(param1:int=0) : BitmapData {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(qeferew==null)
         {
            return texture_;
         }
         var _loc2_:Sirador = qeferew[param1%qeferew.length];
         return _loc2_.getTexture(param1);
      }

      override public function getAltTextureData(param1:int) : Sirador {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(fevadumuf==null)
         {
            return null;
         }
         return fevadumuf[param1];
      }

      private function kalacyfir() : Boolean {
         var _loc1_:Vylasy = Giq.kid().getInstance(Vylasy);
         return _loc1_.dokoza();
      }

      private function parse(param1:XML) : void {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc2_:Biloqu = null;
         var _loc3_:RemoteTexture = null;
         var _loc4_:XML = null;
         switch(param1.name().toString())
         {
            case "Texture":
               texture_=AssetLibrary.jeqycu(String(param1.File),int(param1.Index));
               break;
            case "Mask":
               mask_=AssetLibrary.jeqycu(String(param1.File),int(param1.Index));
               break;
            case "Effect":
               dez=new Baly(param1);
               break;
            case "AnimatedTexture":
               saqizy=Jutot.fyh(String(param1.File),int(param1.Index));
               _loc2_=saqizy.imageFromAngle(0,Zuwomuguk.pazyladar,0);
               texture_=_loc2_.image_;
               mask_=_loc2_.mask_;
               break;
            case "RemoteTexture":
               texture_=AssetLibrary.jeqycu("lofiObj3",255);
               if(this.wywaf)
               {
                  _loc3_=new RemoteTexture(param1.Id,param1.Instance,this.nabovyj);
                  _loc3_.run();
               }
               qed=param1.hasOwnProperty("Right")?Zuwomuguk.RIGHT:Zuwomuguk.DOWN;
               break;
            case "RandomTexture":
               qeferew=new Vector.<Sirador>();
               for each (_loc4_ in param1.children())
               {
                  qeferew.push(new Jerakupej(_loc4_));
               }
               break;
            case "AltTexture":
               if(fevadumuf==null)
               {
                  fevadumuf=new Dictionary();
               }
               fevadumuf[int(param1.@id)]=new Jerakupej(param1);
               break;
         }
         return;
      }

      private function nabovyj(param1:BitmapData) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1.width>16)
         {
            Jutot.add("remoteTexture",param1,null,param1.width/7,param1.height,param1.width,param1.height,qed);
            saqizy=Jutot.fyh("remoteTexture",0);
            texture_=saqizy.imageFromAngle(0,Zuwomuguk.pazyladar,0).image_;
         }
         else
         {
            texture_=param1;
         }
         return;
      }
   }

}