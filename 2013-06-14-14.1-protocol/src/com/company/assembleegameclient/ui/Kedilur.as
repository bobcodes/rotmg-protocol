package com.company.assembleegameclient.ui
{
   import flash.display.Sprite;
   import flash.display.Bitmap;
   import hivysif.Guzowoja;
   import com.company.util.Kideky;
   import com.company.assembleegameclient.util.GuildUtil;
   import jediwip.Vofezuzy;
   import flash.text.TextFieldAutoSize;
   import flash.filters.DropShadowFilter;


   public class Kedilur extends Sprite
   {
      public function Kedilur(param1:String, param2:int, param3:int=0) {
         var _loc5_:* = true;
         var _loc6_:* = false;
         super();
         this.tyj=new Bitmap(null);
         this.tyj.y=-8;
         this.tyj.x=-8;
         var _loc4_:int = param3==0?0:param3-this.tyj.width-16;
         this.guildName_=new Guzowoja().setSize(16).setColor(16777215).setTextWidth(_loc4_);
         this.guildName_.setAutoSize(TextFieldAutoSize.LEFT);
         this.guildName_.filters=[new DropShadowFilter(0,0,0)];
         this.guildName_.x=24;
         this.guildName_.y=2;
         this.draw(param1,param2);
         return;
      }

      private var name_:String;

      private var hezymyv:int;

      private var tyj:Bitmap;

      private var guildName_:Guzowoja;

      public function draw(param1:String, param2:int) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(this.name_==param1&&param2==param2)
         {
            return;
         }
         this.name_=param1;
         this.hezymyv=param2;
         if(this.name_==null||this.name_=="")
         {
            Kideky.kapo(this,this.tyj);
            Kideky.kapo(this,this.guildName_);
         }
         else
         {
            this.tyj.bitmapData=GuildUtil.difamo(this.hezymyv,20);
            Kideky.corikak(this,this.tyj);
            this.guildName_.setStringBuilder(new Vofezuzy(this.name_));
            Kideky.corikak(this,this.guildName_);
         }
         return;
      }
   }

}