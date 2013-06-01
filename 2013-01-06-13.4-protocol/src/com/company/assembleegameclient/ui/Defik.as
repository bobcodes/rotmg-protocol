package com.company.assembleegameclient.ui
{
[CLASS879]   import flash.display.Sprite;
   import flash.display.Bitmap;
   import pudev.Capitu;
   import com.company.util.Gyk;
   import com.company.assembleegameclient.util.GuildUtil;
   import totuhare.Javo;
   import flash.text.TextFieldAutoSize;
   import flash.filters.DropShadowFilter;


   public class Defik extends Sprite
   {
      public function Defik(param1:String, param2:int, param3:int=0) {
         var _loc5_:* = true;
         var _loc6_:* = false;
         super();
         this.mad=new Bitmap(null);
         this.mad.y=-8;
         this.mad.x=-8;
         var _loc4_:int = param3==0?0:param3-this.mad.width-16;
         this.guildName_=new Capitu().setSize(16).setColor(16777215).setTextWidth(_loc4_);
         this.guildName_.setAutoSize(TextFieldAutoSize.LEFT);
         this.guildName_.filters=[new DropShadowFilter(0,0,0)];
         this.guildName_.x=24;
         this.guildName_.y=2;
         this.draw(param1,param2);
         return;
      }

      private var name_:String;

      private var bywuqab:int;

      private var mad:Bitmap;

      private var guildName_:Capitu;

      public function draw(param1:String, param2:int) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(this.name_==param1&&param2==param2)
         {
            return;
         }
         this.name_=param1;
         this.bywuqab=param2;
         if(this.name_==null||this.name_=="")
         {
            Gyk.qekecebo(this,this.mad);
            Gyk.qekecebo(this,this.guildName_);
         }
         else
         {
            this.mad.bitmapData=GuildUtil.qylybacub(this.bywuqab,20);
            Gyk.bazeper(this,this.mad);
            this.guildName_.setStringBuilder(new Javo(this.name_));
            Gyk.bazeper(this,this.guildName_);
         }
         return;
      }
   }
[/CLASS]
}