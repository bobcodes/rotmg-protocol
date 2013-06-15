package fytalis
{
   import flash.display.DisplayObjectContainer;
   import __AS3__.vec.Vector;
   import com.company.assembleegameclient.ui.Himykutew;
   import hilonec.PlayerMenu;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import com.company.assembleegameclient.objects.Player;
   import com.company.assembleegameclient.ui.Nyre;
   import flash.geom.ColorTransform;
   import com.company.assembleegameclient.objects.Viz;
   import flash.utils.getTimer;
   import com.company.util.MoreColorUtil;
   import com.company.assembleegameclient.game.GameSprite;


   public class Zuvyjij extends Panel
   {
      public function Zuvyjij(param1:GameSprite) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.fomifim=new Qivunys();
         this.hunukake=new Vector.<Himykutew>(Viz.foju,true);
         super(param1);
         this.hunukake[0]=this.neqamebic(0,0);
         this.hunukake[1]=this.neqamebic(100,0);
         this.hunukake[2]=this.neqamebic(0,32);
         this.hunukake[3]=this.neqamebic(100,32);
         this.hunukake[4]=this.neqamebic(0,64);
         this.hunukake[5]=this.neqamebic(100,64);
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      public var rokawekos:DisplayObjectContainer;

      public var fomifim:Qivunys;

      public var hunukake:Vector.<Himykutew>;

      public var picolumah:Boolean;

      public var menu:PlayerMenu;

      private function neqamebic(param1:int, param2:int) : Himykutew {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Himykutew = null;
         _loc3_=new Himykutew(16777215,false,null);
         addChild(_loc3_);
         _loc3_.x=param1;
         _loc3_.y=param2;
         return _loc3_;
      }

      private function onAddedToStage(param1:Event) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:Himykutew = null;
         for each (_loc2_ in this.hunukake)
         {
            _loc2_.addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
            _loc2_.addEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         }
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:Himykutew = null;
         this.videhel();
         for each (_loc2_ in this.hunukake)
         {
            _loc2_.removeEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
            _loc2_.removeEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
            _loc2_.removeEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         }
         return;
      }

      private function onMouseOver(param1:MouseEvent) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         if(!(this.menu==null)&&!(this.menu.parent==null))
         {
            return;
         }
         var _loc2_:Himykutew = param1.currentTarget as Himykutew;
         var _loc3_:Player = _loc2_.go as Player;
         if(_loc3_==null||_loc3_.texture_==null)
         {
            return;
         }
         this.picolumah=true;
         return;
      }

      private function onMouseOut(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.picolumah=false;
         return;
      }

      private function onMouseDown(param1:MouseEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.videhel();
         var _loc2_:Himykutew = param1.currentTarget as Himykutew;
         _loc2_.setEnabled(false);
         this.menu=this.fomifim.create(gs_,_loc2_.go as Player);
         this.rokawekos.addChild(this.menu);
         this.menu.addEventListener(Event.REMOVED_FROM_STAGE,this.cabyzagu);
         return;
      }

      private function cabyzagu(param1:Event) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:Nyre = null;
         var _loc3_:Himykutew = null;
         for each (_loc2_ in this.hunukake)
         {
            _loc3_=_loc2_ as Himykutew;
            if(_loc3_)
            {
               _loc3_.setEnabled(true);
            }
         }
         param1.currentTarget.removeEventListener(Event.REMOVED_FROM_STAGE,this.cabyzagu);
         return;
      }

      private function videhel() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.menu!=null)
         {
            if(this.menu.parent!=null)
            {
               this.menu.parent.removeChild(this.menu);
            }
            this.menu=null;
         }
         return;
      }

      override public function draw() : void {
         var [OFS3]_loc11_:* = [/OFS]false;
         var [OFS5]_loc12_:* = [/OFS]true;
         var [OFS13]_loc4_:Nyre = [/OFS][OFS9]null[/OFS];
         var [OFS18]_loc5_:Player = [/OFS][OFS15]null[/OFS];
         var [OFS23]_loc6_:ColorTransform = [/OFS][OFS20]null[/OFS];
         var [OFS26]_loc7_:* = [/OFS][OFS25]NaN[/OFS];
         var [OFS30]_loc8_:* = [/OFS][OFS28]0[/OFS];
         var [OFS42]_loc1_:Viz = [/OFS][OFS32]gs_[/OFS].[OFS34]map[/OFS].[OFS36]party_[/OFS];
         if([OFS43]_loc1_[/OFS][OFS45]==[/OFS][OFS44]null[/OFS])
         {
            for each (_loc4_ in this.[OFS54]hunukake[/OFS])
            {
               [OFS73]_loc4_[/OFS].[OFS76]clear[/OFS][OFS76]([/OFS][OFS76])[/OFS];
            }
            [OFS90]return[/OFS];
         }
         var [OFS93]_loc2_:* = [/OFS][OFS91]0[/OFS];
         var [OFS96]_loc3_:* = [/OFS][OFS94]0[/OFS];
         while([OFS363]_loc3_[/OFS][OFS370]<[/OFS][OFS364]Viz[/OFS].[OFS367]foju[/OFS])
         {
            if((this.[OFS103]picolumah[/OFS])||[OFS119]![/OFS](this.[OFS114]menu[/OFS][OFS118]==[/OFS][OFS117]null[/OFS])&&[OFS135]![/OFS](this.[OFS127]menu[/OFS].[OFS130]parent[/OFS][OFS134]==[/OFS][OFS133]null[/OFS]))
            {
               [OFS156]_loc5_=[/OFS]this.[OFS141]hunukake[/OFS][[OFS144]_loc3_[/OFS]].[OFS148]go[/OFS][OFS153] as [/OFS][OFS151]Player[/OFS];
            }
            else
            {
               [OFS172]_loc5_=[/OFS][OFS162]_loc1_[/OFS].[OFS163]gopodity[/OFS][[OFS166]_loc3_[/OFS]];
            }
            if([OFS178]![/OFS]([OFS174]_loc5_[/OFS][OFS177]==[/OFS][OFS176]null[/OFS])&&[OFS185]_loc5_[/OFS].[OFS187]map_[/OFS][OFS190]==[/OFS][OFS189]null[/OFS])
            {
               [OFS198]_loc5_=[/OFS][OFS195]null[/OFS];
            }
            [OFS203]_loc6_=[/OFS][OFS200]null[/OFS];
            if([OFS205]_loc5_[/OFS][OFS208]!=[/OFS][OFS207]null[/OFS])
            {
               if([OFS212]_loc5_[/OFS].[OFS214]vypo[/OFS][OFS225]<[/OFS][OFS217]_loc5_[/OFS].[OFS219]kukigim[/OFS][OFS224]*[/OFS][OFS222]0.2[/OFS])
               {
                  [OFS235]_loc2_=[/OFS][OFS231]getTimer[/OFS][OFS231]([/OFS][OFS231])[/OFS];
                  [OFS265]_loc7_=[/OFS][OFS258]int[/OFS][OFS258]([/OFS][OFS238]Math[/OFS].[OFS251]abs[/OFS][OFS251]([/OFS][OFS240]Math[/OFS].[OFS247]sin[/OFS][OFS247]([/OFS][OFS242]_loc2_[/OFS][OFS246]/[/OFS][OFS243]200[/OFS][OFS247])[/OFS][OFS251])[/OFS][OFS257]*[/OFS][OFS255]10[/OFS][OFS258])[/OFS][OFS263]/[/OFS][OFS261]10[/OFS];
                  [OFS270]_loc8_=[/OFS][OFS267]128[/OFS];
                  [OFS302]_loc6_=[/OFS][OFS297]new [/OFS][OFS297]ColorTransform[/OFS][OFS297]([/OFS][OFS274]1[/OFS],[OFS274]1[/OFS],[OFS274]1[/OFS],[OFS278]1[/OFS],[OFS280]_loc7_[/OFS][OFS284]*[/OFS][OFS282]_loc8_[/OFS],[OFS287]-[/OFS][OFS285]_loc7_[/OFS][OFS290]*[/OFS][OFS288]_loc8_[/OFS],[OFS293]-[/OFS][OFS291]_loc7_[/OFS][OFS296]*[/OFS][OFS294]_loc8_[/OFS][OFS297])[/OFS];
               }
               if(![OFS304]_loc5_[/OFS].[OFS306]starred_[/OFS])
               {
                  if([OFS313]_loc6_[/OFS][OFS316]!=[/OFS][OFS315]null[/OFS])
                  {
                     [OFS320]_loc6_[/OFS].[OFS328]concat[/OFS][OFS328]([/OFS][OFS322]MoreColorUtil[/OFS].[OFS325]golanehud[/OFS][OFS328])[/OFS];
                  }
                  else
                  {
                     [OFS344]_loc6_=[/OFS][OFS336]MoreColorUtil[/OFS].[OFS339]golanehud[/OFS];
                  }
               }
            }
            this.[OFS347]hunukake[/OFS][[OFS350]_loc3_[/OFS]].[OFS358]draw[/OFS][OFS358]([/OFS][OFS354]_loc5_[/OFS][OFS358],[/OFS][OFS356]_loc6_[/OFS][OFS358])[/OFS];
            _loc3_[OFS361]++[/OFS];
         }
         [OFS374]return[/OFS];
      }
   }

}