model FlybackConverter_original
  Modelica.Electrical.Analog.Sources.ConstantVoltage constantVoltage1(V = 12) annotation(Placement(visible = true, transformation(origin = {-120, 10}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-120, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Ideal.IdealClosingSwitch switch annotation(Placement(visible = true, transformation(origin = {-62.863, -10}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Ideal.IdealDiode diode(Vknee = 0.7) annotation(Placement(visible = true, transformation(origin = {-10, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Capacitor capacitor1(C = 2e-06) annotation(Placement(visible = true, transformation(origin = {20, 25}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 220) annotation(Placement(visible = true, transformation(origin = {60, 25}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Resistor resistor2(R = 1e6) annotation(Placement(visible = true, transformation(origin = {-40, -5}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Sources.BooleanPulse booleanPulse1(period = 1e-5, width = 48.1) annotation(Placement(visible = true, transformation(origin = {-130, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Transformer transformer1(L1 = 0.003, L2 = 0.003, M = 0.002991) annotation(Placement(visible = true, transformation(origin = {-50, 35}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor resistor3(R = 1.4) annotation(Placement(visible = true, transformation(origin = {-98.058, 40}, extent = {{-10, -10}, {10, 10}}, rotation = -180)));
equation
  connect(ground1.p, constantVoltage1.n) annotation(Line(visible = true, origin = {-120, -10}, points = {{0, -10}, {0, 10}}, color = {0, 0, 255}));
  connect(switch.n, constantVoltage1.n) annotation(Line(visible = true, origin = {-91.432, -17.5}, points = {{28.568, -2.5}, {28.568, -7.5}, {-28.568, -7.5}, {-28.568, 17.5}}, color = {0, 0, 255}));
  connect(capacitor1.p, diode.n) annotation(Line(visible = true, origin = {13.333, 38.333}, points = {{6.667, -3.333}, {6.667, 1.667}, {-13.333, 1.667}}, color = {0, 0, 255}));
  connect(resistor1.p, diode.n) annotation(Line(visible = true, origin = {40, 38.333}, points = {{20, -3.333}, {20, 1.667}, {-40, 1.667}}, color = {0, 0, 255}));
  connect(resistor2.n, switch.n) annotation(Line(visible = true, origin = {-51.432, -21.25}, points = {{11.432, 6.25}, {11.432, -3.75}, {-11.432, -3.75}, {-11.432, 1.25}}, color = {0, 0, 255}));
  connect(resistor1.n, capacitor1.n) annotation(Line(visible = true, origin = {40, 12.5}, points = {{20, 2.5}, {20, -2.5}, {-20, -2.5}, {-20, 2.5}}, color = {0, 0, 255}));
  connect(booleanPulse1.y, switch.control) annotation(Line(visible = true, origin = {-95.25, 32.5}, points = {{-23.75, 37.5}, {15.25, 37.5}, {15.25, -42.5}, {39.387, -42.5}}, color = {255, 0, 255}));
  connect(capacitor1.n, resistor2.p) annotation(Line(visible = true, origin = {-10, 10}, points = {{30, 5}, {30, 0}, {-30, 0}, {-30, -5}}, color = {0, 0, 255}));
  connect(transformer1.n1, switch.p) annotation(Line(visible = true, origin = {-61.909, 20}, points = {{1.909, 10}, {-0.954, 10}, {-0.954, -20}}, color = {10, 90, 224}));
  connect(transformer1.n2, diode.p) annotation(Line(visible = true, origin = {-32.5, 35}, points = {{-7.5, -5}, {-2.5, -5}, {-2.5, 5}, {12.5, 5}}, color = {10, 90, 224}));
  connect(transformer1.p2, resistor2.p) annotation(Line(visible = true, origin = {-37.687, 25}, points = {{-2.313, 15}, {11.091, 15}, {11.091, -5}, {-2.313, -5}, {-2.313, -20}}, color = {10, 90, 224}));
  connect(constantVoltage1.p, resistor3.n) annotation(Line(visible = true, origin = {-116.019, 33.333}, points = {{-3.981, -13.333}, {-3.981, 6.667}, {7.961, 6.667}}, color = {10, 90, 224}));
  connect(resistor3.p, transformer1.p1) annotation(Line(visible = true, origin = {-74.029, 40}, points = {{-14.029, 0}, {14.029, 0}}, color = {10, 90, 224}));
  annotation(uses(Modelica(version = "3.2.3")), experiment(StopTime = 0.5), Diagram(coordinateSystem(extent = {{-150, -90}, {150, 90}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Rectangle(visible = true, lineColor = {0, 114, 195}, fillColor = {255, 255, 255}, extent = {{-100, -100}, {100, 100}}, radius = 25), Text(visible = true, textColor = {64, 64, 64}, extent = {{-150, 110}, {150, 150}}, textString = "%name")}));
end FlybackConverter_original;
