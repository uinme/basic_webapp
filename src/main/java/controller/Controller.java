package controller;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public abstract class Controller {
  protected ServletContext context;
  protected HttpServletRequest request;
  protected HttpServletResponse response;

  public Controller(ServletContext context, HttpServletRequest request, HttpServletResponse response) {
    this.context = context;
    this.request = request;
    this.response = response;
  }

  public abstract void indexAction();
  public abstract void showAction();
  public abstract void newAction();
  public abstract void editAction();
  public abstract void createAction();
  public abstract void updateAction();
  public abstract void deleteAction();
}
