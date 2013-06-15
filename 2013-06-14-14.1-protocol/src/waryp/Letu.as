package waryp
{
   import flash.display.Sprite;
   import kofaz.Rynomyd;
   import mukyrosu.Qanyduk;
   import lemugo.Wokycuku;
   import hivaw.Tyke;
   import flash.events.MouseEvent;
   import hivysif.Guzowoja;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import com.company.assembleegameclient.appengine.Jys;
   import com.company.googleanalytics.GA;
   import flash.events.Event;
   import qymoho.Taziw;
   import com.company.rotmg.graphics.ScreenGraphic;


   public class Letu extends Sprite
   {
      public function Letu() {
         var [OFS2]_loc1_:* = [/OFS]true;
         var [OFS3]_loc2_:* = [/OFS]false;
         this.[OFS9]papawu[/OFS][OFS9]=[/OFS][OFS7]{[/OFS][OFS7]}[/OFS];
         [OFS13]super([/OFS][OFS13])[/OFS];
         this.[OFS23]tooltip[/OFS][OFS23]=[/OFS][OFS20]new [/OFS][OFS20]Qanyduk[/OFS][OFS20]([/OFS][OFS18]Sprite[/OFS][OFS20])[/OFS];
         this.[OFS34]selected[/OFS][OFS34]=[/OFS][OFS31]new [/OFS][OFS31]Qanyduk[/OFS][OFS31]([/OFS][OFS29]int[/OFS][OFS31])[/OFS];
         this.[OFS43]close[/OFS][OFS43]=[/OFS][OFS40]new [/OFS][OFS40]Qanyduk[/OFS][OFS40]([/OFS][OFS40])[/OFS];
         this.buy=new Qanyduk(int);
         addChild(new Taziw());
         addChild(new Cysaruha());
         addChild(new ScreenGraphic());
         return;
      }

      private var pyjetumi:Nulejufyl;

      private var vysiqafep:Rynomyd;

      private var papawu:Object;

      public var tooltip:Qanyduk;

      public var close:Qanyduk;

      public var selected:Qanyduk;

      public var buy:Qanyduk;

      private var zilyl:Boolean = false;

      public function initialize(param1:Wokycuku) : void {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc2_:* = 0;
         var _loc3_:XML = null;
         var _loc4_:* = 0;
         var _loc5_:String = null;
         var _loc6_:* = false;
         var _loc7_:CharacterBox = null;
         if(this.zilyl)
         {
            return;
         }
         this.zilyl=true;
         this.pyjetumi=new Nulejufyl(Tyke.bivymyfyz,36,false);
         this.pyjetumi.addEventListener(MouseEvent.CLICK,this.wezu);
         this.pyjetumi.setVerticalAlign(Guzowoja.MIDDLE);
         addChild(this.pyjetumi);
         this.vysiqafep=new Rynomyd();
         this.vysiqafep.draw(param1.pucutad(),param1.wopufud());
         addChild(this.vysiqafep);
         _loc2_=0;
         while(_loc2_<ObjectLibrary.vemociged.length)
         {
            _loc3_=ObjectLibrary.vemociged[_loc2_];
            _loc4_=int(_loc3_.@type);
            _loc5_=_loc3_.@id;
            if(param1.nibulo(_loc5_,Jys.foh))
            {
            }
            else
            {
               _loc6_=param1.nibulo(_loc5_,Jys.hukato);
               _loc7_=new CharacterBox(_loc3_,param1.suzu()[_loc4_],param1,_loc6_);
               _loc7_.x=50+140*int(_loc2_%5)+70-_loc7_.width/2;
               _loc7_.y=88+140*int(_loc2_/5);
               this.papawu[_loc4_]=_loc7_;
               _loc7_.addEventListener(MouseEvent.ROLL_OVER,this.moheteja);
               _loc7_.addEventListener(MouseEvent.ROLL_OUT,this.berozeqy);
               _loc7_.tebiwup.add(this.wewinyni);
               _loc7_.vefojizy.add(this.kiwekup);
               if(_loc4_==784&&!_loc7_.nusicube)
               {
                  _loc7_.vofulapu(75);
               }
               addChild(_loc7_);
            }
            _loc2_++;
         }
         this.pyjetumi.x=stage.stageWidth/2-this.pyjetumi.width/2;
         this.pyjetumi.y=550;
         this.vysiqafep.x=stage.stageWidth;
         this.vysiqafep.y=20;
         GA.global().trackPageview("/newCharScreen");
         return;
      }

      private function wezu(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.close.dispatch();
         return;
      }

      private function moheteja(param1:MouseEvent) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:CharacterBox = param1.currentTarget as CharacterBox;
         _loc2_.rewokeloc(true);
         this.tooltip.dispatch(_loc2_.getTooltip());
         return;
      }

      private function berozeqy(param1:MouseEvent) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:CharacterBox = param1.currentTarget as CharacterBox;
         _loc2_.rewokeloc(false);
         this.tooltip.dispatch(null);
         return;
      }

      private function wewinyni(param1:MouseEvent) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         this.tooltip.dispatch(null);
         var _loc2_:CharacterBox = param1.currentTarget.parent as CharacterBox;
         if(!_loc2_.nusicube)
         {
            return;
         }
         var _loc3_:int = _loc2_.objectType();
         var _loc4_:String = ObjectLibrary.kipanudad[_loc3_];
         GA.global().trackEvent("character","create",_loc4_);
         this.selected.dispatch(_loc3_);
         return;
      }

      public function fawadu(param1:int, param2:int) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.vysiqafep.draw(param1,param2);
         return;
      }

      public function update(param1:Wokycuku) : void {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc3_:XML = null;
         var _loc4_:* = 0;
         var _loc5_:String = null;
         var _loc6_:* = false;
         var _loc7_:CharacterBox = null;
         var _loc2_:* = 0;
         while(_loc2_<ObjectLibrary.vemociged.length)
         {
            _loc3_=ObjectLibrary.vemociged[_loc2_];
            _loc4_=int(_loc3_.@type);
            _loc5_=String(_loc3_.@id);
            if(param1.nibulo(_loc5_,Jys.foh))
            {
            }
            else
            {
               _loc6_=param1.nibulo(_loc5_,Jys.hukato);
               _loc7_=this.papawu[_loc4_];
               if(_loc7_)
               {
                  _loc7_.rakydi(true);
                  if((_loc6_)||(param1.wewe(_loc4_)))
                  {
                     _loc7_.unlock();
                  }
               }
            }
            _loc2_++;
         }
         return;
      }

      private function kiwekup(param1:MouseEvent) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:* = 0;
         var _loc2_:CharacterBox = param1.currentTarget.parent as CharacterBox;
         if((_loc2_)&&!_loc2_.nusicube)
         {
            _loc3_=int(_loc2_.playerXML_.@type);
            _loc2_.rakydi(false);
            this.buy.dispatch(_loc3_);
         }
         return;
      }
   }

}