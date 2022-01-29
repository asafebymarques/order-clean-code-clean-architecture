"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const StockEntry_1 = __importDefault(require("../../../src/domain/entity/StockEntry"));
test("Deve criar uma entrada no estoque", function () {
    const stockEntry = new StockEntry_1.default(1, "in", 10, new Date("2021-07-01T10:00:00"));
    expect(stockEntry.idItem).toBe(1);
    expect(stockEntry.operation).toBe("in");
    expect(stockEntry.quantity).toBe(10);
    expect(stockEntry.date).toEqual(new Date("2021-07-01T10:00:00"));
});
