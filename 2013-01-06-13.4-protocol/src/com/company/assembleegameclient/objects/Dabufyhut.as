package com.company.assembleegameclient.objects
{
[CLASS1309]   import flash.display.BitmapData;
   import jutesesel.Qibigagal;
   import natus.Hewoda;
   import com.company.assembleegameclient.util.Gejugut;
   import com.company.assembleegameclient.appengine.RemoteTexture;
   import com.company.util.AssetLibrary;
   import mejowozy.Roneg;
   import com.company.assembleegameclient.util.Pecipaham;
   import com.company.assembleegameclient.util.Huroj;
   import flash.utils.Dictionary;


   public class Dabufyhut extends Qeh
   {
      public function Dabufyhut(param1:XML) {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:XML = null;
         super();
         this.goh=this.depinad();
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

      private var goh:Boolean;

      override public function getTexture(param1:int=0) : BitmapData {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(duj==null)
         {
            return texture_;
         }
         var _loc2_:Qeh = duj[param1%duj.length];
         return _loc2_.getTexture(param1);
      }

      override public function getAltTextureData(param1:int) : Qeh {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(cuwehilyk==null)
         {
            return null;
         }
         return cuwehilyk[param1];
      }

      private function depinad() : Boolean {
         var _loc1_:Hewoda = Qibigagal.husuha().getInstance(Hewoda);
         return _loc1_.lulocudib();
      }

      private function parse(param1:XML) : void {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc2_:Gejugut = null;
         var _loc3_:RemoteTexture = null;
         var _loc4_:XML = null;
         switch(null)
         {
            case "Texture":
               texture_=AssetLibrary.zovy(String(param1.File),int(param1.Index));
               break;
            case "Mask":
               mask_=AssetLibrary.zovy(String(param1.File),int(param1.Index));
               break;
            case "Effect":
               jepinuroh=new Roneg(param1);
               break;
            case "AnimatedTexture":
               haci=Pecipaham.jujagikan(String(param1.File),int(param1.Index));
               _loc2_=haci.imageFromAngle(0,Huroj.wyqel,0);
               texture_=_loc2_.image_;
               mask_=_loc2_.mask_;
               break;
            case "RemoteTexture":
               texture_=AssetLibrary.zovy("lofiObj3",255);
               if(this.goh)
               {
                  _loc3_=new RemoteTexture(param1.Id,param1.Instance,this.vyzykom);
                  _loc3_.run();
               }
               vucasyt=param1.hasOwnProperty("Right")?Huroj.RIGHT:Huroj.DOWN;
               break;
            case "RandomTexture":
               duj=new Vector.<Qeh>();
               for each (_loc4_ in param1.children())
               {
                  duj.push(new Dabufyhut(_loc4_));
               }
               break;
            case "AltTexture":
               if(cuwehilyk==null)
               {
                  cuwehilyk=new Dictionary();
               }
               cuwehilyk[int(param1.@id)]=new Dabufyhut(param1);
               break;
         }
         return;
      }

      private function vyzykom(param1:BitmapData) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1.width>16)
         {
            Pecipaham.add("remoteTexture",param1,null,param1.width/7,param1.height,param1.width,param1.height,vucasyt);
            haci=Pecipaham.jujagikan("remoteTexture",0);
            texture_=haci.imageFromAngle(0,Huroj.wyqel,0).image_;
         }
         else
         {
            texture_=param1;
         }
         return;
      }
   }
[/CLASS]
}