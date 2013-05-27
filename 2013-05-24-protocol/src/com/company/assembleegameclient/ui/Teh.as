package com.company.assembleegameclient.ui
{
   import flash.display.Sprite;
   import flash.display.Bitmap;
   import movimet.Lufub;
   import com.company.util.Hepapi;
   import com.company.assembleegameclient.util.GuildUtil;
   import nec.Nara;
   import flash.text.TextFieldAutoSize;
   import flash.filters.DropShadowFilter;


   public class Teh extends Sprite
   {
      public function Teh(param1:String, param2:int, param3:int=0) {
         var _loc5_:* = false;
         var _loc6_:* = true;
         super();
         this.buwigyh=new Bitmap(null);
         this.buwigyh.y=-8;
         this.buwigyh.x=-8;
         var _loc4_:int = param3==0?0:param3-this.buwigyh.width-16;
         this.guildName_=new Lufub().setSize(16).setColor(16777215).setTextWidth(_loc4_);
         this.guildName_.setAutoSize(TextFieldAutoSize.LEFT);
         this.guildName_.filters=[new DropShadowFilter(0,0,0)];
         this.guildName_.x=24;
         this.guildName_.y=2;
         this.draw(param1,param2);
         return;
      }

      private var name_:String;

      private var nefecuqo:int;

      private var buwigyh:Bitmap;

      private var guildName_:Lufub;

      public function draw(param1:String, param2:int) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(this.name_==param1&&param2==param2)
         {
            return;
         }
         this.name_=param1;
         this.nefecuqo=param2;
         if(this.name_==null||this.name_=="")
         {
            Hepapi.zolinoqa(this,this.buwigyh);
            Hepapi.zolinoqa(this,this.guildName_);
         }
         else
         {
            this.buwigyh.bitmapData=GuildUtil.ditedabyj(this.nefecuqo,20);
            Hepapi.jamuny(this,this.buwigyh);
            this.guildName_.setStringBuilder(new Nara(this.name_));
            Hepapi.jamuny(this,this.guildName_);
         }
         return;
      }
   }

}